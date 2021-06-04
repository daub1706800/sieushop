<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProductAddRequest;
use App\Http\Requests\ProductEditRequest;
use App\Models\Product;
use App\Models\Field;
use App\Models\Storage;
use App\Models\Image;
use App\Models\ProductCategory;
use App\Traits\StorageImageTrait;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Milon\Barcode\Facades\DNS1DFacade;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Validation\Rule;
use Illuminate\Validation\Validator;

class ProductController extends Controller
{
    use StorageImageTrait;
    private $product;
    private $field;
    private $storage;
    private $productcategory;

    public function __construct(Product $product, Field $field, Storage $storage, productCategory $productcategory)
    {
        $this->product         = $product;
        $this->field           = $field;
        $this->storage         = $storage;
        $this->productcategory = $productcategory;
    }

    public function index()
    {
        $products = $this->product->where('idcongty', auth()->user()->idcongty)->get();

        return view('admin.product.index', compact('products'));
    }

    public function add()
    {
        $storages = $this->storage->where('idcongty', auth()->user()->idcongty)->get();

        $productcategories = $this->productcategory->where('idcongty', auth()->user()->idcongty)->get();

        return view('admin.product.add', compact('storages', 'productcategories'));
    }

    public function store(ProductAddRequest $request)
    {
        try
        {
            DB::beginTransaction();

            $data = [
                'idloaisanpham'    => $request->idloaisanpham,
                'idcongty'         => auth()->user()->idcongty,
                'idtaikhoan'       => auth()->id(),
                'idkho'            => $request->idkho,
                'tensanpham'       => $request->tensanpham,
                'thongtinsanpham'  => $request->thongtinsanpham,
                'xuatxu'           => $request->xuatxu,
                'chungloaisanpham' => $request->chungloaisanpham,
                'dongiasanpham'    => $request->dongiasanpham,
                'khoiluongsanpham' => $request->khoiluongsanpham,
                'donvitinhsanpham' => $request->donvitinhsanpham,
                'mavachsanpham'    => DNS1DFacade::getBarcodeHTML($request->mavachsanpham, 'C128', 2, 50, 'black', true),
            ];

            $dataImageUpload = $this->StorageUploadImage($request, 'hinhanhsanpham', 'product/images');

            if(!empty($dataImageUpload))
            {
                $data['hinhanhsanpham'] = $dataImageUpload['file_path'];
            }

            $product = $this->product->create($data);

            // Insert data to table hinhanh
            if($request->hasFile('hinhanhchitiet'))
            {
                foreach($request->hinhanhchitiet as $fileItem)
                {
                    $dataImageUploadMultiple = $this->StorageUploadImageMultiple($fileItem, 'product/detail-images');
                    Image::create([
                        'idsanpham'    => $product->id,
                        'dulieuhinh' => $dataImageUploadMultiple['file_path']
                    ]);
                }
            }

            DB::commit();

            return redirect()->route('product.index');
        }
        catch (\Exception $exception)
        {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function edit($id)
    {
        $product = $this->product->find($id);

        $company = $product->company;

        $storages = $this->storage->where('idcongty', $company->id)->get();

        $productcategories = $this->productcategory->where('idcongty', $company->id)->get();

        $images = Image::where('idsanpham', $id)->get();

        return view('admin.product.edit', compact('product', 'storages', 'productcategories', 'images'));
    }

    public function update(ProductEditRequest $request, $id)
    {
        try
        {
            DB::beginTransaction();

            if ($request->mavachsanpham)
            {
                $data = [
                    'idloaisanpham'    => $request->idloaisanpham,
                    'idkho'            => $request->idkho,
                    'tensanpham'       => $request->tensanpham,
                    'thongtinsanpham'  => $request->thongtinsanpham,
                    'xuatxu'           => $request->xuatxu,
                    'chungloaisanpham' => $request->chungloaisanpham,
                    'dongiasanpham'    => $request->dongiasanpham,
                    'khoiluongsanpham' => $request->khoiluongsanpham,
                    'donvitinhsanpham' => $request->donvitinhsanpham,
                    'mavachsanpham'    => DNS1DFacade::getBarcodeHTML($request->mavachsanpham, 'C128', 2, 50, 'black', true),
                ];
            }
            else
            {
                $data = [
                    'idloaisanpham'    => $request->idloaisanpham,
                    'idkho'            => $request->idkho,
                    'tensanpham'       => $request->tensanpham,
                    'thongtinsanpham'  => $request->thongtinsanpham,
                    'xuatxu'           => $request->xuatxu,
                    'chungloaisanpham' => $request->chungloaisanpham,
                    'dongiasanpham'    => $request->dongiasanpham,
                    'khoiluongsanpham' => $request->khoiluongsanpham,
                    'donvitinhsanpham' => $request->donvitinhsanpham,
                ];
            }

            if($request->hasFile('hinhanhsanpham'))
            {
                $dataImageUpload = $this->StorageUploadImage($request, 'hinhanhsanpham', 'product/images');

                $data['hinhanhsanpham'] = $dataImageUpload['file_path'];
            }

            $this->product->find($id)->update($data);

            $product = $this->product->find($id);

            // Insert data to table hinhanh
            if($request->hasFile('hinhanhchitiet'))
            {
                // Delete data from table hinhanh before insert
                Image::where('idsanpham', $id)->delete();

                foreach($request->hinhanhchitiet as $fileItem)
                {
                    $dataImageUploadMultiple = $this->StorageUploadImageMultiple($fileItem, 'product/detail-images');
                    Image::create([
                        'idsanpham' => $product->id,
                        'dulieuhinh' => $dataImageUploadMultiple['file_path']
                    ]);
                }
            }
            DB::commit();

            return redirect()->route('product.index');
        }
        catch (\Exception $exception) {

            DB::rollBack();

            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function delete($id)
    {
        $this->product->find($id)->delete();

        return back();
    }

    public function view(Request $request)
    {
        $product = $this->product->find($request->idProduct);

        $company = $product->company->tencongty;

        $storage = $product->storage->tenkho;

        $profile = $product->profile->hothanhvien . ' ' . $product->profile->tenthanhvien;

        $productcategory = $product->productcategory->tenloaisanpham;

        $date = Carbon::createFromFormat('Y-m-d H:i:s', $product->created_at)->format('d-m-Y');

        return response()->json([
            'product' => $product,
            'date' =>$date,
            'company' => $company,
            'storage' => $storage,
            'profile' => $profile,
            'productcategory' => $productcategory
        ]);
    }
}

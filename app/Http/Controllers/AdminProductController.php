<?php

namespace App\Http\Controllers;

use App\Http\Requests\AdminProductAddRequest;
use App\Http\Requests\AdminProductEditRequest;
use App\Models\Company;
use App\Models\Field;
use App\Models\Image;
use App\Models\Product;
use App\Models\ProductCategory;
use App\Models\Storage;
use App\Traits\StorageImageTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Milon\Barcode\Facades\DNS1DFacade;

class AdminProductController extends Controller
{
    use StorageImageTrait;
    private $product;
    private $field;
    private $storage;
    private $productcategory;
    private $company;

    public function __construct(Product $product, Field $field, Storage $storage, ProductCategory $productcategory, Company $company)
    {
        $this->product         = $product;
        $this->field           = $field;
        $this->storage         = $storage;
        $this->productcategory = $productcategory;
        $this->company = $company;
    }

    public function index()
    {
        $products = $this->product->all();

        return view('admin.admin-product.index', compact('products'));
    }

    public function add()
    {
        $fields = $this->field->all();

        $companies = $this->company->all();

        $storages = $this->storage->where('idcongty', auth()->user()->idcongty)->get();

        $productcategories = $this->productcategory->where('idcongty', auth()->user()->idcongty)->get();

        return view('admin.admin-product.add', compact('fields', 'storages', 'productcategories', 'companies'));
    }

    public function input_change(Request $request)
    {
        $storages = $this->storage->where('idcongty', $request->idCompany)->get();

        $storageSelect = '<option value="">Chọn kho</option>';

        foreach ($storages as $storage) {
            $storageSelect .= '<option value="'.$storage->id.'">'.$storage->tenkho.'</option>';
        }

        $productcategories = $this->productcategory->where('idcongty', $request->idCompany)->get();

        $productcategorySelect = '<option value="">Chọn loại sản phẩm</option>';

        foreach ($productcategories as $productcategory) {
            $productcategorySelect .= '<option value="'.$productcategory->id.'">'.$productcategory->tenloaisanpham.'</option>';
        }

        return response()->json([
            'storage' => $storageSelect,
            'productcategory' => $productcategorySelect
        ]);
    }

    public function store(AdminProductAddRequest $request)
    {
        try
        {
            DB::beginTransaction();

            $data = [
                'idcongty'         => $request->idcongty,
                'idloaisanpham'    => $request->idloaisanpham,
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

            return redirect()->route('admin.product.index');
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

        return view('admin.admin-product.edit', compact('product', 'storages', 'productcategories', 'images', 'company'));
    }

    public function update(AdminProductEditRequest $request, $id)
    {
        try
        {
            DB::beginTransaction();

            if ($request->mavachsanpham) {
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

                        'idsanpham'    => $product->id,

                        'dulieuhinh' => $dataImageUploadMultiple['file_path']
                    ]);
                }
            }
            DB::commit();

            return redirect()->route('admin.product.index');
        }
        catch (\Exception $exception) {

            DB::rollBack();
            
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function delete($id)
    {
        $this->product->find($id)->delete();

        return redirect()->route('admin.product.index');
    }
}

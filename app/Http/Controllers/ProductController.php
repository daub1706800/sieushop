<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProductRequest;
use App\Models\Product;
use App\Models\Field;
use App\Models\Storage;
use App\Models\Image;
use App\Models\ProductCategory;
use App\Traits\StorageImageTrait;
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
        $fields = $this->field->all();

        $storages = $this->storage->where('idcongty', auth()->user()->idcongty)
                                            ->get();
        $productcategories = $this->productcategory->where('idcongty', auth()->user()->idcongty)
                                                   ->get();
        return view('admin.product.add', compact('fields', 'storages', 'productcategories'));
    }

    public function store(ProductRequest $request)
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
                'mavachsanpham'    => DNS1DFacade::getBarcodeHTML($request->mavachsanpham, 'C39E+', 2, 50, 'black', true),
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

        $fields = $this->field->all();

        $storages = $this->storage->all();

        $productcategories = $this->productcategory->all();

        $images = Image::where('idsanpham', $id)->get();

        return view('admin.product.edit', compact('product', 'fields', 'storages', 'productcategories', 'images'));
    }

    public function update(ProductRequest $request, $id)
    {
        try
        {
            DB::beginTransaction();
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

            $dataImageUpload = $this->StorageUploadImage($request, 'hinhanhsanpham', 'product/images');

            if(!empty($dataImageUpload))
            {
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

            // return redirect()->route('product.edit', ['id' => $id]);
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
}

<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProductAddRequest;
use App\Http\Requests\ProductEditRequest;
use App\Models\Product;
use App\Models\Field;
use App\Models\Storage;
use App\Models\Image;
use App\Models\ProductCategory;
use App\Models\Stage;
use App\Traits\StorageImageTrait;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Milon\Barcode\Facades\DNS1DFacade;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class ProductController extends Controller
{
    use StorageImageTrait;
    private $product;
    private $field;
    private $storage;
    private $productcategory;
    private $stage;

    public function __construct(Product $product, Field $field, Storage $storage, ProductCategory $productcategory, Stage $stage)
    {
        $this->product         = $product;
        $this->field           = $field;
        $this->storage         = $storage;
        $this->productcategory = $productcategory;
        $this->stage = $stage;
    }

    public function index()
    {
        try {
            $products = $this->product->where('idcongty', auth()->user()->idcongty)->get();

            return view('admin.product.index', compact('products'));            
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function add()
    {
        try {
            $storages = $this->storage->where('idcongty', auth()->user()->idcongty)->get();

            $productcategories = $this->productcategory->where('idcongty', auth()->user()->idcongty)->get();
    
            return view('admin.product.add', compact('storages', 'productcategories'));            
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function store(ProductAddRequest $request)
    {
        try {
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
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function edit($id)
    {
        try {
            $product = $this->product->FindOrFail($id);

            $company = $product->company;
    
            $storages = $this->storage->where('idcongty', $company->id)->get();
    
            $productcategories = $this->productcategory->where('idcongty', $company->id)->get();
    
            $images = Image::where('idsanpham', $id)->get();
    
            return view('admin.product.edit', compact('product', 'storages', 'productcategories', 'images'));            
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function update(ProductEditRequest $request, $id)
    {
        try {
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

            $this->product->FindOrFail($id)->update($data);

            $product = $this->product->FindOrFail($id);

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
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function delete($id)
    {
        try {
            DB::beginTransaction();
            $this->product->FindOrFail($id)->delete();

            DB::commit();

            return back();            
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function view(Request $request)
    {
        try {
            $product = $this->product->FindOrFail($request->idProduct);

            $company = $product->company;
    
            $storage = $product->storage;
    
            $profile = $product->profile->hothanhvien . ' ' . $product->profile->tenthanhvien;
    
            $productcategory = $product->productcategory;
    
            $date = Carbon::createFromFormat('Y-m-d H:i:s', $product->created_at)->format('d-m-Y');
    
            $output = '<div class="row">
                            <p><b>Công ty:</b></p>
                            <p class="pl-2">'.$company->tencongty.'</p>
                        </div>
                        <div class="row">
                            <p><b>Kho:</b></p>
                            <p class="pl-2">'.$storage->tenkho.'</p>
                        </div>
                        <div class="row">
                            <p><b>Người tạo:</b></p>
                            <p class="pl-2">'.$profile.'</p>
                        </div>
                        <div class="row">
                            <p><b>Hình ảnh:</b></p>
                            <div class="col-md-12 text-center">
                                <img src="'.$product->hinhanhsanpham.'" style="width:200px; height: 200px" class="pl-2">
                            </div>
                        </div>
                        <div class="row mt-3">
                            <p><b>Hình ảnh chi tiết:</b></p>';
                            
            foreach ($product->image as $value) {
                $output .= '<div class="col-md-12 text-center">
                                <img src="'.$value->dulieuhinh.'" style="width:200px; height: 200px" class="m-2">
                            </div>';
            }  

            $output .= '</div>
                        <div class="row mt-3">
                            <p><b>Thông tin:</b></p>
                            <p class="pl-2">'.$product->thongtinsanpham.'</p>
                        </div>
                        <div class="row">
                            <p><b>Xuất xứ:</b></p>
                            <p class="pl-2">'.$product->xuatxu.'</p>
                        </div>
                        <div class="row">
                            <p><b>Loại sản phẩm:</b></p>
                            <p class="pl-2">'.$productcategory->tenloaisanpham.'</p>
                        </div>
                        <div class="row">
                            <p><b>Chủng loại:</b></p>
                            <p class="pl-2">'.$product->chungloaisanpham.'</p>
                        </div>
                        <div class="row">
                            <p><b>Đơn giá:</b></p>
                            <p class="pl-2">'.$product->dongiasanpham.'</p>
                        </div>
                        <div class="row">
                            <p><b>Khối lượng:</b></p>
                            <p class="pl-2">'.$product->khoiluongsanpham.'</p>
                        </div>
                        <div class="row">
                            <p><b>Đơn vị tính:</b></p>
                            <p class="pl-2">'.$product->donvitinhsanpham.'</p>
                        </div>
                        <div class="row">
                            <p><b>Mã vạch:</b></p>
                            <p class="pl-2">'.$product->mavachsanpham.'</p>
                        </div>';
    
            $stages = $this->stage->where('idsanpham', $request->idProduct)->get();
    
            if (!$stages->isEmpty()) {
                $output .= '<hr>
                            <div class="text-center">
                                <h4><b>Giai đoạn</b></h4>
                            </div>';
    
                foreach ($stages as $key => $stage) {
                    $output .= '<div class="row">
                                    <p><b>'.$stage->tengiaidoan.':</b></p>
                                    <p class="pl-2">'.$stage->motagiaidoan.'</p>
                                </div>';
                    foreach ($stage->stageInfo as $key => $item) {
                        $output .= '<div class="row ml-3">
                                        <p><b>'.$item->tencongviec.':</b></p>
                                        <p class="pl-2">'.$item->motacongviec.'</p>
                                    </div>';
                    }
                }
            }
    
            return response()->json([
                'output' => $output,
                'tensanpham' => $product->tensanpham,
                'date' => $date
            ]);            
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }
}

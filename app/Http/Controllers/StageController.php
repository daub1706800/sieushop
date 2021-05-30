<?php

namespace App\Http\Controllers;

use App\Http\Requests\StageInfoRequest;
use App\Http\Requests\StageRequest;
use App\Models\Product;
use App\Models\Stage;
use App\Models\StageInfo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class StageController extends Controller
{
    private $stage;
    private $product;
    private $stageInfo;

    public function __construct(Stage $stage, Product $product, StageInfo $stageInfo)
    {
        $this->stage   = $stage;
        $this->product = $product;
        $this->stageInfo = $stageInfo;
    }

    public function index($product_id)
    {
        $product = $this->product->find($product_id);

        $stages  = $this->stage->where('idsanpham', $product_id)->get();

        return view('admin.stage.index', compact('product_id', 'stages', 'product'));
    }

    public function store(StageRequest $request, $product_id)
    {
        $this->stage->create([
            'idsanpham' => $product_id,
            'idtaikhoan' => auth()->id(),
            'tengiaidoan' => $request->tengiaidoan,
            'motagiaidoan' => $request->motagiaidoan,
        ]);

        return back();
    }

    public function edit($id)
    {
        dd("Trang sửa giai đoạn sẽ dùng Ajax để xử lý");
    }

    public function delete($id)
    {
        $this->stage->find($id)->delete();

        return back();
    }

    public function stage_info_index($stage_id, $product_id)
    {
        $stage = $this->stage->find($stage_id);

        $stageInfos = $this->stageInfo->where('idgiaidoan', $stage_id)->get();

        return view('admin.stage.stage-info', compact('stage', 'stageInfos', 'product_id'));
    }

    public function stage_info_add($stage_id, $product_id)
    {
        $stage = $this->stage->find($stage_id);

        return view('admin.stage.add', compact('stage', 'product_id'));
    }

    public function stage_info_store(Request $request, $stage_id, $product_id)
    {
        $count = count($request->tencongviec);

        $validated = Validator::make($request->all(), [
            'tencongviec.*' => 'bail|required|max:255',
            'thoigianbatdau.*' => 'bail|required|before:today',
            'thoigiandukien.*' => 'required|numeric',
            'thoigianhoanthanh.*' => 'required',
            'motacongviec.*' => 'bail|required|min:10',
        ], [
            'tencongviec.*.required' => 'Tên không được để trống',
            'tencongviec.*.max' => 'Tên không được vượt quá 255 ký tự',
            'thoigianbatdau.*.required' => 'Thời gian bắt đầu không được để trống',
            'thoigianbatdau.*.max' => 'Thời gian bắt đầu không được vượt quá 255 ký tự',
            'thoigianbatdau.*.before' => 'Thời gian bắt đầu không hợp lệ',
            'thoigiandukien.*.required' => 'Thời gian dự kiến không được để trống',
            'thoigiandukien.*.numeric' => 'Thời gian dự kiến phải là kiểu số nguyên',
            'thoigianhoanthanh.*.required' => 'Thời gian hoàn thành không được để trống',
            'motacongviec.*.required' => 'Mô tả công việc không được để trống',
            'motacongviec.*.min' => 'Mô tả công việc ít nhất 10 ký tự',
        ]);

        if(!$validated->passes())
        {
            // array_push($validated_arr, $validated->errors());
            return response()->json([
                'status' => 0,
                'error' => $validated->errors(),
            ]);
        }
        else
        {
            for($i = 0; $i < $count; $i++)
            {
                $this->stageInfo->create([
                    'idgiaidoan'        => $stage_id,
                    'tencongviec'       => $request->tencongviec[$i],
                    'motacongviec'      => $request->motacongviec[$i],
                    'thoigianbatdau'    => $request->thoigianbatdau[$i],
                    'thoigiandukien'    => $request->thoigiandukien[$i],
                    'thoigianhoanthanh' => $request->thoigianhoanthanh[$i],
                    'trehan'            => $request->trehan[$i]
                ]);
            }
            return response()->json([
                'status' => 1,
                'url' => route('stage-info.index', ['stage_id' => $stage_id, 'product_id' => $product_id])
            ]);
        }
    }

    public function stage_info_edit($stageInfo_id, $stage_id, $product_id)
    {
        $stageInfo = $this->stageInfo->find($stageInfo_id);

        return view('admin.stage.edit-stage-info', compact('stageInfo', 'stage_id', 'product_id'));
    }

    public function stage_info_update(StageInfoRequest $request, $stageInfo_id, $stage_id, $product_id)
    {
        $this->stageInfo->find($stageInfo_id)->update([
            'tencongviec'       => $request->tencongviec,
            'motacongviec'      => $request->motacongviec,
            'thoigianbatdau'    => $request->thoigianbatdau,
            'thoigiandukien'    => $request->thoigiandukien,
            'thoigianhoanthanh' => $request->thoigianhoanthanh,
            'trehan'            => $request->trehan,
        ]);

        return redirect()->route('stage-info.index', ['stage_id' => $stage_id, 'product_id' => $product_id]);
    }

    public function stage_info_delete($stageInfo_id, $stage_id, $product_id)
    {
        $this->stageInfo->find($stageInfo_id)->delete();

        return redirect()->route('stage-info.index', ['stage_id' => $stage_id, 'product_id' => $product_id]);
    }

    public function stage_info_count(Request $request)
    {
        $stages = $this->stageInfo->where('idgiaidoan', $request->stage_id)->get();
        $count = count($stages);
        $arr = array();
        $arr = [
            'count'   => $count
        ];
        
        return response()->json($count);
    }

    public function stage_info_render_add(Request $request)
    {
        $output = ' <div class="tab-pane fade tab-pane-count" id="nav-'.$request->i.'" role="tabpanel" aria-labelledby="nav-'.$request->i.'-tab">
                        <div class="row">
                            <div class="col-md-12">
                                <button class="btn btn-danger delete-work float-right" data-index="'.$request->i.'">Xóa công việc</button>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="">Tên công việc *</label><input type="text" class="form-control validated validated-tencongviec enter-keydown" name="tencongviec[]" placeholder="Tên công việc" value="'.old('tencongviec').'">
                                </div>
                                <div class="alert alert-danger alert-custom validate-tencongviec"></div>
                            </div>
                            <div class="col-md-12 row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="">Thời gian bắt đầu *</label><input type="text" class="form-control datepicker validated validated-thoigianbatdau enter-keydown" name="thoigianbatdau[]" placeholder="YYYY-MM-DD" value="'.old('thoigianbatdau').'">
                                    </div>
                                    <div class="alert alert-danger alert-custom validate-thoigianbatdau"></div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="">Thời gian dự kiến *</label><input class="form-control validated validated-thoigiandukien enter-keydown" name="thoigiandukien[]" placeholder="VD: 1 tháng" type="text" value="'.old('thoigiandukien').'">
                                    </div>
                                    <div class="alert alert-danger alert-custom validate-thoigiandukien"></div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="">Thời gian hoàn thành *</label><input class="form-control datepicker validated validated-thoigianhoanthanh enter-keydown" name="thoigianhoanthanh[]" placeholder="YYYY-MM-DD" type="text" value="'.old('thoigianhoanthanh').'">
                                    </div>
                                    <div class="alert alert-danger alert-custom validate-thoigianhoanthanh"></div>
                                </div>
                                <div class="col-md-6 som-tre-han" style="display: none;">
                                    <div class="form-group">
                                        <label for="">Sớm/Trễ hạn (ngày)</label><input class="form-control validated validated-trehan enter-keydown" name="trehan[]" placeholder="Ví dụ: 10 ngày" type="text" value="'.old('trehan').'">
                                    </div>
                                    <div class="alert alert-danger alert-custom validate-trehan"></div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="">Mô tả công việc *</label><textarea name="motacongviec[]" class="form-control summernote validated validated-motacongviec">'.old('motacongviec').'</textarea>
                                    </div>
                                    <div class="alert alert-danger alert-custom validate-motacongviec"></div>
                                </div>
                            </div>
                        </div>
                    </div>';
        return response()->json([
            'output' => $output
        ]);
    }
}

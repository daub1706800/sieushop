<?php

namespace App\Http\Controllers;

use App\Http\Requests\StageInfoRequest;
use App\Http\Requests\StageRequest;
use App\Models\Product;
use App\Models\Stage;
use App\Models\StageInfo;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class AdminStageController extends Controller
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

        return view('admin.admin-stage.index', compact('product_id', 'stages', 'product'));
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

    public function edit($id, $product_id)
    {
        $stage = $this->stage->find($id);

        return view('admin.admin-stage.edit', compact('stage', 'product_id'));
    }

    public function update(StageRequest $request, $id)
    {
        $validated = $request->validated();

        $this->stage->find($id)->update([
            'tengiaidoan' => $request->tengiaidoan,
            'motagiaidoan' => $request->motagiaidoan
        ]);

        return redirect()->route('admin.stage.index', ['product_id' => $request->product_id]);
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

        $arr = [];

        foreach ($stageInfos as $key => $stageInfo) {
            $newDatethoigianbatdau = Carbon::create($stageInfo->thoigianbatdau);
            $newDatethoigianhoanthanh = Carbon::create($stageInfo->thoigianhoanthanh);
            if ($newDatethoigianbatdau->addDays($stageInfo->thoigiandukien) >= $newDatethoigianhoanthanh) {
                $check = "Sớm";
            }
            else
            {
                $check = "Trễ";
            }
            $arr += [
                $key => [
                    'id' => $stageInfo->id,
                    'idgiaidoan' => $stageInfo->idgiaidoan,
                    'tencongviec' => $stageInfo->tencongviec,
                    'motacongviec' => $stageInfo->motacongviec,
                    'thoigianbatdau' => $stageInfo->thoigianbatdau,
                    'thoigiandukien' => $stageInfo->thoigiandukien,
                    'thoigianhoanthanh' => $stageInfo->thoigianhoanthanh,
                    'trehan' => $stageInfo->trehan,
                    'check' => $check
                ],
            ];
        }

        return view('admin.admin-stage.index-stage-info', compact('stage', 'arr', 'product_id'));
    }

    public function stage_info_add($stage_id, $product_id)
    {
        $stage = $this->stage->find($stage_id);

        return view('admin.admin-stage.add-stage-info', compact('stage', 'product_id'));
    }

    public function stage_info_store(Request $request, $stage_id, $product_id)
    {
        $count = count($request->tencongviec);

        $validated = Validator::make($request->all(), [
            'tencongviec.*' => 'bail|required|max:255',
            'thoigianbatdau.*' => 'required',
            'thoigiandukien.*' => 'required|numeric',
            'thoigianhoanthanh.*' => 'nullable|date_format:"Y-m-d"|after_or_equal:thoigianbatdau.*',
            'motacongviec.*' => 'bail|required|min:10',
        ], [
            'tencongviec.*.required' => 'Tên không được để trống',
            'tencongviec.*.max' => 'Tên không được vượt quá 255 ký tự',
            'thoigianbatdau.*.required' => 'Thời gian bắt đầu không được để trống',
            'thoigiandukien.*.required' => 'Thời gian dự kiến không được để trống',
            'thoigiandukien.*.numeric' => 'Thời gian dự kiến phải là kiểu số nguyên',
            'thoigianhoanthanh.*.date_format' => 'Thời gian hoàn thành phải có kiểu Y-m-d',
            'thoigianhoanthanh.*.after_or_equal' => 'Thời gian hoàn thành không được sớm hơn thời gian bắt đầu',
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
                'url' => route('admin.stage-info.index', ['stage_id' => $stage_id, 'product_id' => $product_id])
            ]);
        }
    }

    public function stage_info_edit($stageInfo_id, $stage_id, $product_id)
    {
        $stageInfo = $this->stageInfo->find($stageInfo_id);

        return view('admin.admin-stage.edit-stage-info', compact('stageInfo', 'stage_id', 'product_id'));
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

        return redirect()->route('admin.stage-info.index', ['stage_id' => $stage_id, 'product_id' => $product_id]);
    }

    public function stage_info_delete($stageInfo_id, $stage_id, $product_id)
    {
        $this->stageInfo->find($stageInfo_id)->delete();

        return redirect()->route('admin.stage-info.index', ['stage_id' => $stage_id, 'product_id' => $product_id]);
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
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="">Thời gian bắt đầu *</label><input type="text" class="form-control datepicker validated validated-thoigianbatdau enter-keydown" name="thoigianbatdau[]" placeholder="'.now()->format('Y-m-d').'" value="'.old('thoigianbatdau').'">
                                        </div>
                                        <div class="alert alert-danger alert-custom validate-thoigianbatdau"></div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="">Thời gian dự kiến (ngày) *</label><input class="form-control validated validated-thoigiandukien enter-keydown" name="thoigiandukien[]" placeholder="'.now()->format('d').'" type="text" value="'.old('thoigiandukien').'">
                                        </div>
                                        <div class="alert alert-danger alert-custom validate-thoigiandukien"></div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="">Thời gian hoàn thành</label><input class="form-control datepicker validated validated-thoigianhoanthanh enter-keydown" name="thoigianhoanthanh[]" placeholder="'.now()->format('Y-m-d').'" type="text" value="'.old('thoigianhoanthanh').'">
                                        </div>
                                        <div class="alert alert-danger alert-custom validate-thoigianhoanthanh"></div>
                                    </div>
                                    <div class="col-md-6 som-tre-han">
                                        <div class="form-group">
                                            <label class="trangthai">Sớm/Trễ hạn (ngày)</label><input class="form-control validated validated-trehan enter-keydown" name="trehan[]" type="text" value="0" readonly>
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
                        </div>
                    </div>';
        return response()->json([
            'output' => $output
        ]);
    }
}

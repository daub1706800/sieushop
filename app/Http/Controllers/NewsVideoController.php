<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests\NewsVideoRequestAdd;
use App\Http\Requests\NewsVideoRequestEdit;
use App\Models\Category;
use App\Models\Company;
use App\Models\NewsHistory;
use App\Models\NewsLog;
use App\Models\NewsVideo;
use App\Models\Profile;
use App\Traits\StorageImageTrait;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class NewsVideoController extends Controller
{
    use StorageImageTrait;
    private $newsvideo;
    private $category;
    private $profile;
    private $company;
    private $newshistory;
    private $newslog;

    public function __construct(NewsVideo $newsvideo, Category $category, Profile $profile, Company $company, NewsHistory $newshistory, NewsLog $newslog)
    {
        $this->newsvideo = $newsvideo;
        $this->category = $category;
        $this->profile = $profile;
        $this->company = $company;
        $this->newshistory = $newshistory;
        $this->newslog = $newslog;
        Carbon::setLocale('vi'); // hiển thị ngôn ngữ tiếng việt.
    }

    public function index()
    {
        try {
            $newsvideo = $this->newsvideo->where('idcongty', auth()->user()->idcongty)->get();

            foreach ($newsvideo as $value) {
                if ($value->ngayxuatban) {
                    $value->ngayxuatban = Carbon::create($value->ngayxuatban)->diffForHumans();
                }
            }

            return view('admin.news-video.index', compact('newsvideo'));
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function add()
    {
        try {
            $categories = $this->category->orderBy('tenchuyenmuc', 'asc')->get();

            return view('admin.news-video.add', compact('categories'));
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function store(NewsVideoRequestAdd $request)
    {
        try {
            DB::beginTransaction();

            $loaivideotintuc = 0;

            if ($request->loaivideotintuc) {
                $loaivideotintuc = 1;
            }

            $dataNews = [
                'idchuyenmuc' => $request->idchuyenmuc,
                'idcongty' => auth()->user()->idcongty,
                'idtaikhoan' => auth()->id(),
                'tieudevideo' => $request->tieudevideo,
                'tomtatvideo' => $request->tomtatvideo,
                'nguonvideotintuc' => $request->nguonvideotintuc,
                'loaivideotintuc' => $loaivideotintuc,
            ];

            if ($request->hasFile('hinhdaidienvideo')) {

                $dataImageUpload = $this->StorageUploadImage($request, 'hinhdaidienvideo', 'news/image');

                $dataNews['hinhdaidienvideo'] = $dataImageUpload['file_path'];
            }
            
            if($request->hasFile('dulieuvideotintuc'))
            {
                $dataVideoUpload = $this->StorageUploadImage($request, 'dulieuvideotintuc', 'news/video');

                $dataNews['dulieuvideotintuc'] = $dataVideoUpload['file_path'];
            }

            $this->newsvideo->create($dataNews);

            DB::commit();

            return redirect()->route('video.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
        
    }

    public function edit($id)
    {
        try {
            $newsvideo = $this->newsvideo->FindOrFail($id);

            $categories = $this->category->orderBy('tenchuyenmuc', 'asc')->get();

            return view('admin.news-video.edit', compact('newsvideo', 'categories'));
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function update(NewsVideoRequestEdit $request, $id)
    {
        try {
            DB::beginTransaction();

            $loaivideotintuc = 0;

            if ($request->loaivideotintuc) {
                $loaivideotintuc = 1;
            }

            $dataNews = [
                'idchuyenmuc' => $request->idchuyenmuc,
                'tieudevideo' => $request->tieudevideo,
                'tomtatvideo' => $request->tomtatvideo,
                'nguonvideotintuc' => $request->nguonvideotintuc,
                'loaivideotintuc' => $loaivideotintuc,
                'duyetvideotintuc' => 0,
            ];

            if ($request->hasFile('hinhdaidienvideo')) {

                $dataImageUpload = $this->StorageUploadImage($request, 'hinhdaidienvideo', 'news/image');

                $dataNews['hinhdaidienvideo'] = $dataImageUpload['file_path'];
            }


            if($request->hasFile('dulieuvideotintuc'))
            {
                $dataVideoUpload = $this->StorageUploadImage($request, 'dulieuvideotintuc', 'news/video');

                $dataNews['dulieuvideotintuc'] = $dataVideoUpload['file_path'];
            }

            $this->newsvideo->FindOrFail($id)->update($dataNews);

            DB::commit();

            return redirect()->route('video.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function delete($id)
    {
        try {
            DB::beginTransaction();

            $this->newsvideo->FindOrFail($id)->delete();

            DB::commit();

            return redirect()->route('video.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function update_duyet(Request $request, $id)
    {
        $request->validate([
            'noidungdanhgia' => 'required|max:255'
        ], [
            'noidungdanhgia.required' => 'Nội dung đánh giá không được để trống',
            'noidungdanhgia.max' => 'Nội dung đánh giá không được vượt quá 255 ký tự',
        ]);

        try {
            DB::beginTransaction();

            $this->newslog->create([
                'idvideotintuc' => $id,
                'idtaikhoan' => auth()->id(),
                'noidungdanhgia' => 'Duyệt tin: ' . $request->noidungdanhgia,
                'thoigian' => Carbon::now()->format('Y-m-d H:i:s')
            ]);
    
            $this->newsvideo->FindOrFail($id)->update([
                'duyetvideotintuc' => 1,
                'xuatbanvideotintuc' => 0,
                'trangthaithuhoi' => 0,
            ]);

            DB::commit();
    
            return redirect()->route('video.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function update_xuatban(Request $request, $id)
    {
        $request->validate([
            'noidungdanhgia' => 'required|max:255'
        ], [
            'noidungdanhgia.required' => 'Nội dung đánh giá không được để trống',
            'noidungdanhgia.max' => 'Nội dung đánh giá không được vượt quá 255 ký tự',
        ]);

        try {
            DB::beginTransaction();

            $this->newslog->create([
                'idvideotintuc' => $id,
                'idtaikhoan' => auth()->id(),
                'noidungdanhgia' => 'Xuất bản: ' . $request->noidungdanhgia,
                'thoigian' => Carbon::now()->format('Y-m-d H:i:s')
            ]);
    
            $this->newsvideo->FindOrFail($id)->update([
                'xuatbanvideotintuc' => 1,
                'ngayxuatban' => Carbon::now()->format('Y-m-d H:i:s')
            ]);

            DB::commit();
    
            return redirect()->route('video.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function history(Request $request)
    {
        try {
            $newshistories = $this->newshistory->where('idvideotintuc', $request->idNews)->get();

            $newsvideo = $this->newsvideo->where('id', $request->idNews)->first();

            $output = '';

            foreach ($newshistories as $value) {

                $date = Carbon::createFromFormat('Y-m-d H:i:s', $value->thoigian)->format('H:i:s d-m-Y');

                $output .= '<div class="row"><p>Vào lúc '.$date.'</p><p class="pl-2">--- '.$value->lydogo.'</p></div>';
            }

            return response()->json([
                'output' => $output,
                'newsvideo' => $newsvideo->tieudevideo
            ]);
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function remove(Request $request, $id)
    {
        $request->validate([
            'lydogo' => 'required|min:5|max:255'
        ], [
            'lydogo.required' => 'Lý do thu hồi không được để trống',
            'lydogo.min' => 'Lý do thu hồi không được ít hơn 5 ký tự',
            'lydogo.max' => 'Lý do thu hồi không được vượt quá 255 ký tự',
        ]);

        try {
            DB::beginTransaction();

            $this->newshistory->create([
                'idtaikhoan' => auth()->id(),
                'idvideotintuc' => $id,
                'lydogo' => $request->lydogo,
                'thoigian' => Carbon::now()->format('Y-m-d H:i:s')
            ]);
    
            $this->newsvideo->FindOrFail($id)->update([
                'duyetvideotintuc' => 0,
                'xuatbanvideotintuc' => 0,
                'ngayxuatban' => null
            ]);

            DB::commit();
    
            return redirect()->route('video.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function view(Request $request)
    {
        try {
            $newsvideo = $this->newsvideo->FindOrFail($request->idNews);

            $category = $this->category->where('id', $newsvideo->idchuyenmuc)->first();

            $author = $this->profile->where('idtaikhoan', $newsvideo->idtaikhoan)->first();

            $ngaydang = Carbon::createFromFormat('Y-m-d H:i:s', $newsvideo->ngaydangvideo)->format('d-m-Y');

            $output = '<video style="width:440px; height:300px" controls>
                        <source src="'.$newsvideo->dulieuvideotintuc.'" type="video/mp4">
                        Trình duyệt của bạn không hỗ trợ thẻ video trong HTML5.
                    </video>';

            $array = [
                'newsvideo' => $newsvideo,
                'author' => $author->hothanhvien . ' ' . $author->tenthanhvien,
                'category' => $category->tenchuyenmuc,
                'ngaydang' => $ngaydang,
                'video' => $output
            ];

            return response()->json($array);
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function log($id)
    {
        try {
            $newsvideo = $this->newsvideo->FindOrFail($id);

            $newslogs = $this->newslog->where('idvideotintuc', $id)->get();

            return view('admin.news-video.log', compact('newslogs', 'newsvideo'));
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function change_status(Request $request)
    {
        try {
            DB::beginTransaction();

            if ($request->status == 1) {
                $this->newsvideo->FindOrFail($request->id)->update([
                    'loaivideotintuc' => 0
                ]);
                
                return response()->json($status=0);
            }
            else
            {
                $this->newsvideo->FindOrFail($request->id)->update([
                    'loaivideotintuc' => 1
                ]);
    
                return response()->json($status=1);
            }

            DB::commit();
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function delete_video(Request $request)
    {
        try {
            DB::beginTransaction();

            $this->news->FindOrFail($request->id)->update([
                'videotintuc' => null
            ]);

            DB::commit();
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }
}

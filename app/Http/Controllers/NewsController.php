<?php

namespace App\Http\Controllers;

use App\Http\Requests\NewsRequest;
use App\Http\Requests\NewsRequestEdit;
use App\Models\Category;
use App\Models\Company;
use App\Models\Field;
use App\Models\LogNews;
use App\Models\News;
use App\Models\NewsHistory;
use App\Models\NewsLog;
use App\Models\Video;
use App\Models\Profile;
use App\Traits\StorageImageTrait;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;

class NewsController extends Controller
{
    use StorageImageTrait;
    private $news;
    private $category;
    private $video;
    private $profile;
    private $company;
    private $newshistory;
    private $newslog;

    public function __construct(News $news, Category $category, Video $video, Profile $profile, Company $company, NewsHistory $newshistory, NewsLog $newslog)
    {
        $this->news = $news;
        $this->category = $category;
        $this->video = $video;
        $this->profile = $profile;
        $this->company = $company;
        $this->newshistory = $newshistory;
        $this->newslog = $newslog;
        Carbon::setLocale('vi'); // hiển thị ngôn ngữ tiếng việt.
    }

    public function index()
    {
        try {
            $news = $this->news->all();

            foreach ($news as $value) {
                if ($value->ngayxuatban) {
                    $value->ngayxuatban = Carbon::create($value->ngayxuatban)->diffForHumans();
                }
            }

            return view('admin.news.index', compact('news'));
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function add()
    {
        try {
            $categories = $this->category->orderBy('tenchuyenmuc', 'asc')->get();

            $companies = $this->company->all();

            return view('admin.news.add', compact('categories', 'companies'));
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function store(NewsRequest $request)
    {
        try {
            DB::beginTransaction();

            $loaitintuc = 0;

            if ($request->loaitintuc) {
                $loaitintuc = 1;
            }

            $dataNews = [
                'idchuyenmuc'   => $request->idchuyenmuc,
                'idcongty'      => $request->idcongty,
                'idtaikhoan'    => auth()->id(),
                'tieudetintuc'  => $request->tieudetintuc,
                'tomtattintuc'  => $request->tomtattintuc,
                // 'ngaydangtintuc'=> date('Y-m-d H:i:s'),
                'noidungtintuc' => $request->noidungtintuc,
                'loaitintuc'    => $loaitintuc,
            ];

            if ($request->hasFile('hinhanhtintuc')) {

                $dataImageUpload = $this->StorageUploadImage($request, 'hinhanhtintuc', 'news/image');

                $dataNews['hinhanhtintuc'] = $dataImageUpload['file_path'];
            }
            
            if($request->hasFile('videotintuc'))
            {
                $dataVideoUpload = $this->StorageUploadImage($request, 'videotintuc', 'news/video');

                $dataNews['videotintuc'] = $dataVideoUpload['file_path'];
            }

            $this->news->create($dataNews);

            DB::commit();

            return redirect()->route('news.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function edit($id)
    {
        try {
            $news = $this->news->FindOrFail($id);

            $categories = $this->category->orderBy('tenchuyenmuc', 'asc')->get();

            $companies = $this->company->all();

            return view('admin.news.edit', compact('news', 'categories', 'companies'));
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function update(NewsRequestEdit $request, $id)
    {
        try {
            DB::beginTransaction();

            $loaitintuc = 0;

            if ($request->loaitintuc) {
                $loaitintuc = 1;
            }

            $dataNews = [
                'idchuyenmuc'   => $request->idchuyenmuc,
                'tieudetintuc'  => $request->tieudetintuc,
                'tomtattintuc'  => $request->tomtattintuc,
                'noidungtintuc' => $request->noidungtintuc,
                'loaitintuc'    => $loaitintuc,
                'duyettintuc' => 0
            ];

            if ($request->hasFile('hinhanhtintuc')) {

                $dataImageUpload = $this->StorageUploadImage($request, 'hinhanhtintuc', 'news/image');

                $dataNews['hinhanhtintuc'] = $dataImageUpload['file_path'];
            }


            if($request->hasFile('videotintuc'))
            {
                $dataVideoUpload = $this->StorageUploadImage($request, 'videotintuc', 'news/video');

                $dataNews['videotintuc'] = $dataVideoUpload['file_path'];
            }

            $this->news->FindOrFail($id)->update($dataNews);

            DB::commit();

            return redirect()->route('news.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function delete($id)
    {
        try {
            DB::beginTransaction();

            $this->news->FindOrFail($id)->delete();

            DB::commit();

            return redirect()->route('news.index');
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
                'idtintuc' => $id,
                'idtaikhoan' => auth()->id(),
                'noidungdanhgia' => 'Duyệt tin: ' . $request->noidungdanhgia,
                'thoigian' => Carbon::now()->format('Y-m-d H:i:s')
            ]);
    
            $this->news->FindOrFail($id)->update([
                'duyettintuc' => 1,
                'xuatbantintuc' => 0,
                'lydogo' => 0,
            ]);

            DB::commit();
    
            return redirect()->route('news.index');
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
                'idtintuc' => $id,
                'idtaikhoan' => auth()->id(),
                'noidungdanhgia' => 'Xuất bản: ' . $request->noidungdanhgia,
                'thoigian' => Carbon::now()->format('Y-m-d H:i:s')
            ]);
    
            $this->news->FindOrFail($id)->update([
                'xuatbantintuc' => 1,
                'ngayxuatban' => Carbon::now()->format('Y-m-d H:i:s')
            ]);
    
            DB::commit();

            return redirect()->route('news.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function history(Request $request)
    {
        try {
            $newshistories = $this->newshistory->where('idtintuc', $request->idNews)->get();

            $news = $this->news->where('id', $request->idNews)->first();

            $output = '';

            foreach ($newshistories as $value) {

                $date = Carbon::createFromFormat('Y-m-d H:i:s', $value->thoigian)->format('H:i:s d-m-Y');

                $output .= '<div class="row"><p>Vào lúc '.$date.'</p><p class="pl-2">--- '.$value->lydogo.'</p></div>';
            }

            return response()->json([
                'output' => $output,
                'news' => $news->tieudetintuc
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
                'idtintuc' => $id,
                'lydogo' => $request->lydogo,
                'thoigian' => Carbon::now()->format('Y-m-d H:i:s')
            ]);
    
            $this->news->find($id)->update([
                'duyettintuc' => 0,
                'xuatbantintuc' => 0,
                'ngayxuatban' => null
            ]);

            DB::commit();
    
            return redirect()->route('news.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function view(Request $request)
    {
        try {
            $news = $this->news->FindOrFail($request->idNews);

            $category = $this->category->where('id', $news->idchuyenmuc)->first();

            $author = $this->profile->where('idtaikhoan', $news->idtaikhoan)->first();

            $ngaydang = Carbon::createFromFormat('Y-m-d H:i:s', $news->ngaydangtintuc)->format('d-m-Y');

            $output = '';

            if ($news->videotintuc) {
                $output = '<video style="width:440px; height:300px" controls>
                            <source src="'.$news->dulieuvideo.'" type="video/mp4">
                            Trình duyệt của bạn không hỗ trợ thẻ video trong HTML5.
                        </video>';
            }

            $array = [
                'news' => $news,
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
            $news = $this->news->FindOrFail($id);

            $newslogs = $this->newslog->where('idtintuc', $id)->get();

            $company = $this->news->FindOrFail($id)->company;

            return view('admin.news.log', compact('newslogs', 'company', 'news'));
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function change_status(Request $request)
    {
        try {
            if ($request->status == 1) {

                DB::beginTransaction();

                $this->news->FindOrFail($request->id)->update([
                    'loaitintuc' => 0
                ]);

                DB::commit();
                
                return response()->json($status=0);
            }
            else
            {
                DB::beginTransaction();

                $this->news->FindOrFail($request->id)->update([
                    'loaitintuc' => 1
                ]);

                DB::commit();
    
                return response()->json($status=1);
            }
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

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
    }

    public function index()
    {
        $news = $this->news->all();

        return view('admin.news.index', compact('news'));
    }

    public function add()
    {
        $categories = $this->category->orderBy('tenchuyenmuc', 'asc')->get();

        $companies = $this->company->all();

        return view('admin.news.add', compact('categories', 'companies'));
    }

    public function store(NewsRequest $request)
    {
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

        return redirect()->route('news.index');
    }

    public function edit($id)
    {
        $news = $this->news->find($id);

        $categories = $this->category->orderBy('tenchuyenmuc', 'asc')->get();

        $companies = $this->company->all();

        return view('admin.news.edit', compact('news', 'categories', 'companies'));
    }

    public function update(NewsRequestEdit $request, $id)
    {
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

        $this->news->find($id)->update($dataNews);

        return redirect()->route('news.index');
    }

    public function delete($id)
    {
        $this->news->find($id)->delete();

        return redirect()->route('news.index');
    }

    public function update_duyet(Request $request, $id)
    {
        $request->validate([
            'noidungdanhgia' => 'required|max:255'
        ], [
            'noidungdanhgia.required' => 'Nội dung đánh giá không được để trống',
            'noidungdanhgia.max' => 'Nội dung đánh giá không được vượt quá 255 ký tự',
        ]);

        $this->newslog->create([
            'idtintuc' => $id,
            'idtaikhoan' => auth()->id(),
            'noidungdanhgia' => 'Duyệt tin: ' . $request->noidungdanhgia,
            'thoigian' => Carbon::now()->format('Y-m-d H:i:s')
        ]);

        $this->news->find($id)->update([
            'duyettintuc' => 1,
            'xuatbantintuc' => 0,
            'lydogo' => 0,
        ]);

        return redirect()->route('news.index');
    }

    public function update_xuatban(Request $request, $id)
    {
        $request->validate([
            'noidungdanhgia' => 'required|max:255'
        ], [
            'noidungdanhgia.required' => 'Nội dung đánh giá không được để trống',
            'noidungdanhgia.max' => 'Nội dung đánh giá không được vượt quá 255 ký tự',
        ]);

        $this->newslog->create([
            'idtintuc' => $id,
            'idtaikhoan' => auth()->id(),
            'noidungdanhgia' => 'Xuất bản: ' . $request->noidungdanhgia,
            'thoigian' => Carbon::now()->format('Y-m-d H:i:s')
        ]);

        $this->news->find($id)->update([
            'xuatbantintuc' => 1,
        ]);

        return redirect()->route('news.index');
    }

    public function history(Request $request)
    {
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

        $this->newshistory->create([
            'idtaikhoan' => auth()->id(),
            'idtintuc' => $id,
            'lydogo' => $request->lydogo,
            'thoigian' => Carbon::now()->format('Y-m-d H:i:s')
        ]);

        $this->news->find($id)->update([
            'duyettintuc' => 0,
            'xuatbantintuc' => 0,
        ]);

        return redirect()->route('news.index');
    }

    public function view(Request $request)
    {
        $news = $this->news->find($request->idNews);

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
    }

    public function log($id)
    {
        $news = $this->news->find($id);

        $newslogs = $this->newslog->where('idtintuc', $id)->get();

        $company = $this->news->find($id)->company;

        return view('admin.news.log', compact('newslogs', 'company', 'news'));
    }

    public function change_status(Request $request)
    {
        if ($request->status == 1) {
            $this->news->find($request->id)->update([
                'loaitintuc' => 0
            ]);
            
            return response()->json($status=0);
        }
        else
        {
            $this->news->find($request->id)->update([
                'loaitintuc' => 1
            ]);

            return response()->json($status=1);
        }
    }

    public function delete_video(Request $request)
    {
        $this->news->find($request->id)->update([
            'videotintuc' => null
        ]);
    }
}

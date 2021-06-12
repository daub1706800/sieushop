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
    }

    public function index()
    {
        $newsvideo = $this->newsvideo->where('idcongty', auth()->user()->idcongty)->get();

        return view('admin.news-video.index', compact('newsvideo'));
    }

    public function add()
    {
        $categories = $this->category->orderBy('tenchuyenmuc', 'asc')->get();

        return view('admin.news-video.add', compact('categories'));
    }

    public function store(NewsVideoRequestAdd $request)
    {
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

        return redirect()->route('video.index');
    }

    public function edit($id)
    {
        $newsvideo = $this->newsvideo->find($id);

        $categories = $this->category->orderBy('tenchuyenmuc', 'asc')->get();

        return view('admin.news-video.edit', compact('newsvideo', 'categories'));
    }

    public function update(NewsVideoRequestEdit $request, $id)
    {
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

        $this->newsvideo->find($id)->update($dataNews);

        return redirect()->route('video.index');
    }

    public function delete($id)
    {
        $this->newsvideo->find($id)->delete();

        return redirect()->route('video.index');
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
            'idvideotintuc' => $id,
            'idtaikhoan' => auth()->id(),
            'noidungdanhgia' => 'Duyệt tin: ' . $request->noidungdanhgia,
            'thoigian' => Carbon::now()->format('Y-m-d H:i:s')
        ]);

        $this->newsvideo->find($id)->update([
            'duyetvideotintuc' => 1,
            'xuatbanvideotintuc' => 0,
            'trangthaithuhoi' => 0,
        ]);

        return redirect()->route('video.index');
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
            'idvideotintuc' => $id,
            'idtaikhoan' => auth()->id(),
            'noidungdanhgia' => 'Xuất bản: ' . $request->noidungdanhgia,
            'thoigian' => Carbon::now()->format('Y-m-d H:i:s')
        ]);

        $this->newsvideo->find($id)->update([
            'xuatbanvideotintuc' => 1,
        ]);

        return redirect()->route('video.index');
    }

    public function history(Request $request)
    {
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
            'idvideotintuc' => $id,
            'lydogo' => $request->lydogo,
            'thoigian' => Carbon::now()->format('Y-m-d H:i:s')
        ]);

        $this->newsvideo->find($id)->update([
            'duyetvideotintuc' => 0,
            'xuatbanvideotintuc' => 0,
        ]);

        return redirect()->route('video.index');
    }

    public function view(Request $request)
    {
        $newsvideo = $this->newsvideo->find($request->idNews);

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
    }

    public function log($id)
    {
        $newsvideo = $this->newsvideo->find($id);

        $newslogs = $this->newslog->where('idvideotintuc', $id)->get();

        return view('admin.news-video.log', compact('newslogs', 'newsvideo'));
    }

    public function change_status(Request $request)
    {
        if ($request->status == 1) {
            $this->newsvideo->find($request->id)->update([
                'loaivideotintuc' => 0
            ]);
            
            return response()->json($status=0);
        }
        else
        {
            $this->newsvideo->find($request->id)->update([
                'loaivideotintuc' => 1
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

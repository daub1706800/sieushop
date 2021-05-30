<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Field;
use App\Models\News;
use App\Models\Video;
use App\Models\Profile;
use App\Traits\StorageImageTrait;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    use StorageImageTrait;
    private $news;
    private $category;
    private $video;
    private $profile;

    public function __construct(News $news, Category $category, Video $video, Profile $profile)
    {
        $this->news     = $news;
        $this->category = $category;
        $this->video    = $video;
        $this->profile  = $profile;
    }

    public function index()
    {
        $news = $this->news->where('idcongty', auth()->user()->idcongty)
                           ->orderBy('id', 'desc')
                           ->paginate(10);
        return view('news.index', compact('news'));
    }

    public function add()
    {
        $categories = $this->category->all();
        return view('news.add', compact('categories'));
    }

    public function store(Request $request)
    {
        $dataNews = [
            'idchuyenmuc'   => $request->idchuyenmuc,
            'idcongty'      => auth()->user()->idcongty,
            'idtaikhoan'    => auth()->id(),
            'tieudetintuc'  => $request->tieudetintuc,
            'tomtattintuc'  => $request->tomtattintuc,
            'noidungtintuc' => $request->noidungtintuc,
            'loaitintuc'    => $request->loaitintuc,
        ];

        $dataImageUpload = $this->StorageUploadImage($request, 'hinhanhtintuc', 'news/image');

        if($dataImageUpload)
        {
            $dataNews['hinhanhtintuc'] = $dataImageUpload['file_path'];
        }

        $tintuc = $this->news->create($dataNews);

        // Insert data to table Video
        if($request->hasFile('videotintuc'))
        {
            foreach($request->videotintuc as $fileItem)
            {
                $dataVideo = $this->StorageUploadImageMultiple($fileItem, 'news/video');
                Video::create([
                    'idtintuc'    => $tintuc->id,
                    'dulieuvideo' => $dataVideo['file_path']
                ]);
            }
        }

        return redirect()->route('news.index');
    }

    public function edit($id)
    {
        $news       = $this->news->find($id);
        $categories = $this->category->all();
        $videos     = $this->video->where('idtintuc', $id)->get();
        return view('news.edit', compact('news', 'categories', 'videos'));
    }

    public function update(Request $request, $id)
    {
        $dataNews = [
            'idchuyenmuc'   => $request->idchuyenmuc,
            'tieudetintuc'  => $request->tieudetintuc,
            'tomtattintuc'  => $request->tomtattintuc,
            'noidungtintuc' => $request->noidungtintuc,
            'loaitintuc'    => $request->loaitintuc,
        ];

        $dataImageUpload = $this->StorageUploadImage($request, 'hinhanhtintuc', 'news/image');

        if(!empty($dataImageUpload))
        {
            $dataNews['hinhanhtintuc'] = $dataImageUpload['file_path'];
        }

        $this->news->find($id)->update($dataNews);

        $tintuc = $this->news->find($id);

        // Insert data to table Video
        if($request->hasFile('videotintuc'))
        {
            // Delete data from table Video before Update
            $this->video->where('idtintuc', $id)->delete();

            foreach($request->videotintuc as $fileItem)
            {
                $dataVideo = $this->StorageUploadImageMultiple($fileItem, 'news/video');
                Video::create([
                    'idtintuc'    => $tintuc->id,
                    'dulieuvideo' => $dataVideo['file_path']
                ]);
            }
        }

        return redirect()->route('news.edit', ['id' => $id]);
    }

    public function delete($id)
    {
        $this->news->find($id)->delete();
        return view('news.index');
    }

    public function update_duyet(Request $request)
    {
        $this->news->find($request->id)->update([
            'duyettintuc' => 1,
        ]);

        // return response([
        //     'code' => 200,
        //     'message' => 'success'
        // ], 200);
    }

    public function update_xuatban(Request $request)
    {
        $this->news->find($request->id)->update([
            'xuatbantintuc' => 1,
        ]);
    }
}

<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests\AdvertiseRequestAdd;
use App\Http\Requests\AdvertiseRequestEdit;
use App\Models\Advertise;
use App\Models\AdvertiseImage;
use App\Traits\StorageImageTrait;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class AdvertiseController extends Controller
{
    use StorageImageTrait;
    private $advertise;
    private $advertiseimage;

    public function __construct(Advertise $advertise, AdvertiseImage $advertiseimage)
    {
        $this->advertise = $advertise;
        $this->advertiseimage = $advertiseimage;
    }

    public function index()
    {
        try {
            $advertises = $this->advertise->orderBy('id', 'desc')->get();

            return view('admin.advertise.index', compact('advertises'));
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function add()
    {
        return view('admin.advertise.add');
    }

    public function store(AdvertiseRequestAdd $request)
    {
        try {
            DB::beginTransaction();
            
            $loaiquangcao = 0;

            if ($request->loaiquangcao) {
                $loaiquangcao = 1;
            }

            $advertise = $this->advertise->create([
                'tieudequangcao' => $request->tieudequangcao,
                'loaiquangcao' => $loaiquangcao,
            ]);

            if($request->hasFile('dulieuhinhanhquangcao'))
            {
                foreach($request->dulieuhinhanhquangcao as $fileItem)
                {
                    $dataImageUploadMultiple = $this->StorageUploadImageMultiple($fileItem, 'advertise/image');
                    
                    $advertise->advertiseimage()->create([
                        'dulieuhinhanhquangcao' => $dataImageUploadMultiple['file_path'],
                        'loaibanner' => $request->loaibanner,
                    ]);
                }
            }
            elseif($request->hasFile('dulieuhinhanhquangcao1'))
            {
                foreach($request->dulieuhinhanhquangcao1 as $fileItem)
                {
                    $dataImageUploadMultiple = $this->StorageUploadImageMultiple($fileItem, 'advertise/image');
                    
                    $advertise->advertiseimage()->create([
                        'dulieuhinhanhquangcao' => $dataImageUploadMultiple['file_path'],
                        'loaibanner' => $request->loaibanner,
                    ]);
                }
            }
            else
            {
                foreach($request->dulieuhinhanhquangcao2 as $fileItem)
                {
                    $dataImageUploadMultiple = $this->StorageUploadImageMultiple($fileItem, 'advertise/image');
                    
                    $advertise->advertiseimage()->create([
                        'dulieuhinhanhquangcao' => $dataImageUploadMultiple['file_path'],
                        'loaibanner' => $request->loaibanner,
                    ]);
                }
            }
            
            DB::commit();

            return redirect()->route('advertise.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
        
    }

    public function edit($id)
    {
        try {
            $advertise = $this->advertise->FindOrFail($id);

            return view('admin.advertise.edit', compact('advertise'));
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function update(AdvertiseRequestEdit $request, $id)
    {
        try {
            DB::beginTransaction();
            
            $advertise = $this->advertise->FindOrFail($id);

            $loaiquangcao = 0;

            if ($request->loaiquangcao) {
                $loaiquangcao = 1;
            }

            $advertise->update([
                'tieudequangcao' => $request->tieudequangcao,
                'loaiquangcao' => $loaiquangcao
            ]);

            if($request->hasFile('dulieuhinhanhquangcao'))
            {
                $advertise->advertiseimage()->delete();

                foreach($request->dulieuhinhanhquangcao as $fileItem)
                {
                    $dataImageUploadMultiple = $this->StorageUploadImageMultiple($fileItem, 'advertise/image');
                    
                    $advertise->advertiseimage()->create([
                        'dulieuhinhanhquangcao' => $dataImageUploadMultiple['file_path'],
                        'loaibanner' => $request->loaibanner,
                    ]);
                }
            }
            elseif($request->hasFile('dulieuhinhanhquangcao1'))
            {
                $advertise->advertiseimage()->delete();

                foreach($request->dulieuhinhanhquangcao1 as $fileItem)
                {
                    $dataImageUploadMultiple = $this->StorageUploadImageMultiple($fileItem, 'advertise/image');
                    
                    $advertise->advertiseimage()->create([
                        'dulieuhinhanhquangcao' => $dataImageUploadMultiple['file_path'],
                        'loaibanner' => $request->loaibanner,
                    ]);
                }
            }
            else
            {
                foreach($request->dulieuhinhanhquangcao2 as $fileItem)
                {
                    $advertise->advertiseimage()->delete();

                    $dataImageUploadMultiple = $this->StorageUploadImageMultiple($fileItem, 'advertise/image');
                    
                    $advertise->advertiseimage()->create([
                        'dulieuhinhanhquangcao' => $dataImageUploadMultiple['file_path'],
                        'loaibanner' => $request->loaibanner,
                    ]);
                }
            }
            DB::commit();

            return redirect()->route('advertise.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function delete($id)
    {
        try {
            DB::beginTransaction();

            $advertise = $this->advertise->FindOrFail($id);

            $advertise->delete();

            $advertise->advertiseimage()->delete();

            DB::commit();

            return redirect()->route('advertise.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function change_status(Request $request)
    {
        try {
            if ($request->status == 1) {
                $this->advertise->FindOrFail($request->id)->update([
                    'loaiquangcao' => 0
                ]);
                
                return response()->json($status=0);
            }
            else
            {
                $this->advertise->FindOrFail($request->id)->update([
                    'loaiquangcao' => 1
                ]);
    
                return response()->json($status=1);
            }
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }

    public function view(Request $request)
    {
        try {
            $advertise = $this->advertise->FindOrFail($request->idAdvertise);

            $date = Carbon::createFromFormat('Y-m-d H:i:s', $advertise->ngaytaoquangcao)->format('d-m-Y');

            $output = '<p style="font-size: 28px">'.$advertise->tieudequangcao.'</p>';

            if (!$advertise->advertiseimage->isEmpty()) {
                foreach ($advertise->advertiseimage as $key => $value) {
                    $output .= '<p><img src="'.$value->dulieuhinhanhquangcao.'" style="width:440px; height: 440px"></p>';
                }
            }

            return response()->json([
                'output' => $output,
                'date' => $date
            ]);
        } catch (\Exception $exception) {
            Log::error('Message:' . $exception->getMessage() . '--- Line:' . $exception->getLine());
        }
    }
}

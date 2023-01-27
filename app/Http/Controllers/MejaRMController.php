<?php

namespace App\Http\Controllers;

use App\Models\MejaRM;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class MejaRMController extends Controller
{
    public function index()
    {
        return view('dashboard.meja.index', [
            'title' => 'List Meja',
            'header' => 'Daftar Meja',
            'meja' => MejaRM::where('adminrm_id', auth()->user()->id)->orderBy('no', 'ASC')->get()
        ]);
    }

    public function create()
    {
        //$meja = MejaRM::where('adminrm_id', auth()->user()->id)->latest('no');

        return view('dashboard.meja.create', [
            'title' => 'input meja',
            'header' => 'input meja',
            'meja' => MejaRM::where('adminrm_id', auth()->user()->id)->latest('no')->first()
        ]);
    }

    public function store(Request $request)
    {
        $meja1 = MejaRM::where('adminrm_id', auth()->user()->id)->latest('no')->first();
        $meja2 = MejaRM::where('adminrm_id', auth()->user()->id)->get();
        $mejaakhir = $meja1->no + 1;
        $validatedData['no'] = $mejaakhir;

        $validatedData = $request->validate([
            'no' => 'required',
            'pesan' => 'required|max:255'
        ]);

        $dtin = $validatedData['no'];

        foreach ($meja2 as $mj2) {
            if ($mj2->no == $dtin) {
                return redirect('/meja/create')->with('found', 'Meja sudah ada');
            } else {
            }
        };

        $validatedData['adminrm_id'] = auth()->user()->id;
        $validatedData['qr'] = 'qr-code.png';
        $validatedData['link'] = 'https://www.youtube.com/watch?v=G1IbRujko-A&t=443s';

        // dd($validatedData);
        MejaRM::create($validatedData);

        return redirect('/meja');
    }

    public function show($id)
    {
        return view('dashboard.meja.create', [
            'title' => 'input meja',
            'header' => 'input meja',
            'meja' => MejaRM::where('adminrm_id', auth()->user()->id)->latest('no')->first()
        ]);
    }

    public function edit(MejaRM $meja)
    {
        return view('dashboard.meja.edit', [
            'title' => 'Edit meja',
            'header' => 'Edit meja',
            'meja' => $meja
        ]);
    }

    public function update(Request $request, MejaRM $meja)
    {
        $rules = [
            'adminrm_id' => '',
            'no' => 'required',
            'pesan' => 'required|max:255',
            'link' => '',
            'qr' => ''
        ];

        $validatedData['adminrm_id'] = auth()->user()->id;
        $validatedData = $request->validate($rules);

        MejaRM::where('id', $meja->id)->update($validatedData);
        return redirect('/meja')->with('success', 'Post Has ben Update!!');
    }

  
    public function destroy(MejaRM $meja)
    {

        if ($meja->oldImage) {
            Storage::delete($meja->oldImage);
        }

        MejaRM::destroy($meja->id);

        return redirect('/meja')->with('success', 'Delete Meja Success');
    }

    public function download(MejaRM $meja)
    {
       
        $nama = $meja->link;
        $pathToFile = URL() . 'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=' . $meja->link;
        $headers = array(
            'Content-Type: .png|.jpg',
        );
        return response()->download($pathToFile, $nama, $headers);
    }
}

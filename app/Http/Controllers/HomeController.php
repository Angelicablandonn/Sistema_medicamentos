<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Medicamento;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request)
    {
        return redirect()->route($request->user()->role);

         }
    public function home(){
        $medicamentos=Medicamento::orderBy('id')->get();

        return view('frontend.index')->with('medicamentos',$medicamentos);

}
public function login(){
    return view('frontend.pages.login');
}
public function loginSubmit(Request $request){
    $data= $request->all();
    if(Auth::attempt(['email' => $data['email'], 'password' => $data['password'],'status'=>'active'])){
        Session::put('user',$data['email']);
        request()->session()->flash('success','Successfully login');
        return redirect()->route('home');
    }
    else{
        request()->session()->flash('error','Invalid email and password pleas try again!');
        return redirect()->back();
    }
}

public function logout(){
    Session::forget('user');
    Auth::logout();
    request()->session()->flash('success','Logout successfully');
    return back();
}

public function register(){
    return view('frontend.pages.register');
}
public function registerSubmit(Request $request){
    // return $request->all();
    $this->validate($request,[
        'name'=>'string|required|min:2',
        'email'=>'string|required|unique:users,email',
        'password'=>'required|min:6|confirmed',
    ]);
    $data=$request->all();
    // dd($data);
    $check=$this->create($data);
    Session::put('user',$data['email']);
    if($check){
        request()->session()->flash('success','Successfully registered');
        return redirect()->route('home');
    }
    else{
        request()->session()->flash('error','Please try again!');
        return back();
    }
}
public function create(array $data){
    return User::create([
        'name'=>$data['name'],
        'email'=>$data['email'],
        'password'=>Hash::make($data['password']),
        'status'=>'active'
        ]);
}
// Reset password
public function showResetForm(){
    return view('auth.passwords.old-reset');
}


}

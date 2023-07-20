<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Medicamento;
use Illuminate\Support\Str;
class MedicamentosController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('backend.medicamento.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('backend.medicamento.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'nombre' => 'required|string|max:255',
            'detalles' => 'required|string',
            'fecha_vencimiento' => 'required|date',
            'status' => 'required|in:active,inactive', // Validar que el campo "status" sea active o inactive
            'registro_invima' => 'required|string|max:255',
            'imagen' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048', // Asegúrate de ajustar las reglas de validación para la imagen según tus necesidades
            'precio' => 'required|numeric',
            'cantidad' => 'required|integer|min:0',
            'lote' => 'required|string',]);
            $data=$request->all();
            $slug=Str::slug($request->nombre);
            $count=Medicamento::where('slug',$slug)->count();
            if($count>0){
                $slug=$slug.'-'.date('ymdis').'-'.rand(0,999);
            }
            $data['slug']=$slug;
            // return $slug;
            $status=Medicamento::create($data);
            if($status){
                request()->session()->flash('success','Medicamento successfully added');
            }
            else{
                request()->session()->flash('error','Error occurred while adding banner');
            }
            return redirect()->route('medicamento.index');
        }
        /*
        $request->validate([
            'nombre' => 'required|string|max:255',
            'detalles' => 'required|string',
            'fecha_vencimiento' => 'required|date',
            'status' => 'required|in:active,inactive', // Validar que el campo "status" sea active o inactive
            'registro_invima' => 'required|string|max:255',
            'imagen' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048', // Asegúrate de ajustar las reglas de validación para la imagen según tus necesidades
            'precio' => 'required|numeric',
            'lote' => 'required|string|max:255',
            // Agrega más reglas de validación según tus necesidades
        ]);

        // Guardar la imagen en el sistema de archivos
        $imagenNombre = time() . '.' . $request->imagen->getClientOriginalExtension();
        $request->imagen->move(public_path('imagenes'), $imagenNombre);

        // Crear el nuevo medicamento en la base de datos
        $medicamentos = new Medicamento([
            'nombre' => $request->nombre,
            'detalles' => $request->detalles,
            'fecha_vencimiento' => $request->fecha_vencimiento,
            'status' => $request->status,
            'registro_invima' => $request->registro_invima,
            'imagen' => $imagenNombre,
            'precio' => $request->precio,
            'lote' => $request->lote,
            // Agrega más campos según tus necesidades
        ]);
        $medicamentos->save();

        // Redirigir a la página de detalles del medicamento recién creado
        return redirect()->route('medicamentos.show', $medicamento->id)
            ->with('success', 'Medicamento creado exitosamente.');
            */
    

    

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}

<?php

namespace App\Http\Controllers;
use App\Models\Pedido;
use App\Models\Medicamento;
use Illuminate\Http\Request;
class PedidoController extends Controller
{

    public function index()
    {
        $pedidos=Pedido::orderBy('id')->get();


        return view('backend.pedidos.index', compact('pedidos'));
    }

    // Rest of the controller methods...

public function create()
{
    $medicamentos = Medicamento::all();
    return view('frontend.pages.create', compact('medicamentos'));
}
public function store(Request $request)
{
    // Validación de los campos del formulario
    $request->validate([
        'nombre' => 'required',
        'direccion' => 'required',
        'cantidad' => 'required|numeric|min:1',
        // Agrega más reglas de validación según tus necesidades
    ]);

    // Crear un nuevo pedido utilizando los datos del formulario
    $pedido = new Pedido();
    $pedido->nombre = $request->input('nombre');
    $pedido->direccion = $request->input('direccion');
    $pedido->cantidad = $request->input('cantidad');
    // Asigna los valores del medicamento desde los campos ocultos
    $pedido->medicamento_id = $request->input('medicamento_id');
    $pedido->nombre_medicamento = $request->input('nombre_medicamento');
    $pedido->precio_medicamento = $request->input('precio_medicamento');

    // Calcular y asignar el total del pedido
    $pedido->total = $pedido->cantidad * $pedido->precio_medicamento;

    // Guardar el pedido en la base de datos
    $pedido->save();
/**
    // Redireccionar a la página de confirmación
    return redirect()->route('pedido.confirmacion', [
        'nombre_medicamento' => $pedido->nombre_medicamento,
        'cantidad' => $pedido->cantidad,
        'precio_medicamento' => $pedido->precio_medicamento,
        'total' => $pedido->total,
    ]);
    */
}

public function edit($id)
{
    $pedidos = Pedido::findOrFail($id);
    $medicamentos = Medicamento::all();
    return view('backend.pedidos.edit', compact('pedidos', 'medicamentos'));
}
public function update(Request $request, $id)
{
    // Validar los datos enviados por el formulario
    $request->validate([
        'medicamento_id' => 'required|exists:medicamentos,id',
        'cantidad' => 'required|integer|min:1',
        // Agrega aquí más reglas de validación si es necesario
    ]);

    // Calcular el precio unitario del medicamento
    $medicamento = Medicamento::findOrFail($request->medicamento_id);
    $precioUnitario = $medicamento->precio;

    // Calcular el total del pedido
    $total = $precioUnitario * $request->cantidad;

    // Actualizar el pedido en la base de datos
    $pedido = Pedido::findOrFail($id);
    $pedido->update([
        'medicamento_id' => $request->medicamento_id,
        'cantidad' => $request->cantidad,
        'precio_unitario' => $precioUnitario,
        'total' => $total,
        'fecha_venta' => now(),
    ]);

    return redirect()->route('pedidos.index')->with('success', 'Pedido actualizado correctamente.');
}
public function destroy($id)
{
    $pedido = Pedido::findOrFail($id);
    $pedido->delete();

    return redirect()->route('pedidos.index')->with('success', 'Pedido eliminado correctamente.');
}



}

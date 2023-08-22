<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;


class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */

       public function index()
       {
        $categories = Category::all();
        return view('backend.category.index', compact("categories"));
       }
       public function create(){
        $parent_cats=Category::where('is_parent',1)->orderBy('title','ASC')->get();
        return view('backend.category.create')->with('parent_cats',$parent_cats);


       }
       public function store(Request  $request){
        $data = $request->validate([
            'title' => 'required|string|max:255',
            'slug' => 'required|string|unique:categories,slug',
            'photo' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'is_parent' => 'required|boolean',
            'summary' => 'nullable|string',
            'parent_id' => 'nullable|exists:categories,id',
            'status' => 'required|in:active,inactive',
        ]);
        if ($request->hasFile('photo')) {
            $imagePath = $request->file('photo')->store('category_photos', 'public');
            $data['photo'] = $imagePath;
        }

        Category::create($data);

        return redirect()->route('categories.index')->with('success', 'Categoría creada exitosamente.');


       }


       public function edit(string $id)
       {
        $parent_cats=Category::where('is_parent',1)->get();
        $category=Category::findOrFail($id);

           return view('backend.category.edit')->with('category',$category)->with('parent_cats',$parent_cats);

       }


        public function update(Request $request, Category $category)
        {
            $data = $request->validate([
                'title' => 'required|string|max:255',
                'slug' => 'required|string|unique:categories,slug,' . $category->id,
                'photo' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048', // Añadir validación de imagen
                'is_parent' => 'required|boolean',
                'summary' => 'nullable|string',
                'parent_id' => 'nullable|exists:categories,id',
                'status' => 'required|in:active,inactive',
            ]);

            // Procesar la imagen si se proporciona
            if ($request->hasFile('photo')) {
                // Eliminar la imagen anterior si existe
                if ($category->photo) {
                    Storage::disk('public')->delete($category->photo);
                }

                // Almacenar la nueva imagen
                $imagePath = $request->file('photo')->store('category_photos', 'public');
                $data['photo'] = $imagePath;
            }

            $category->update($data);

            return redirect()->route('categories.index')->with('success', 'Categoría actualizada exitosamente.');
        }

       /**
        * Remove the specified resource from storage.
        */
       public function destroy(string $id)
       {
           $categories = Category::findOrFail($id);
           $categories->delete();

           return redirect()->route('categories.index')->with('success', 'Categoria eliminada exitosamente.');

       }
   }

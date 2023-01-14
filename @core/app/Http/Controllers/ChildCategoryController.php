<?php

namespace App\Http\Controllers;

use App\Helpers\FlashMsg;
use Illuminate\Http\Request;
use App\ChildCategory;
use App\Subcategory;
use App\Category;
use Str;

class ChildCategoryController extends Controller
{

    public function index(){
        $child_categories = ChildCategory::with('category','subcategory')->paginate(10);
        $categories = Category::all();
        $sub_categories = Subcategory::all();

        return view('backend.pages.child-category.index',compact('child_categories','categories', 'sub_categories'));
    }

    public function add_new_childcategory(Request $request)
    {

        if($request->isMethod('post')){
            $request->validate([
                'name'=> 'required|max:191|unique:subcategories',
                'slug'=> 'max:191|unique:subcategories',
                'category_id'=> 'required',
                'sub_category_id'=> 'required',
            ]);

            $request->slug=='' ? $slug = Str::slug($request->name) : $slug = $request->slug;
            ChildCategory::create([
                'name' => $request->name,
                'slug' => $slug,
                'category_id' => $request->category_id,
                'sub_category_id' => $request->sub_category_id,
                'image' => $request->image,
            ]);

            return redirect()->back()->with(FlashMsg::item_new('Child Category Added'));
        }
        $categories = Category::all();
        $sub_categories = Subcategory::all();

        return view('backend.pages.child-category.add_child_category',compact('categories', 'sub_categories'));
    }

    // get sub category for select
   public function getSubcategory(Request $request)
    {
        $sub_categories = Subcategory::where('category_id', $request->category_id)->get();
        return response()->json([
            'status' => 'success',
            'sub_categories' => $sub_categories,
        ]);
    }


    public function change_status($id){
        $category = ChildCategory::select('status')->where('id',$id)->first();
        if($category->status==1){
            $status = 0;
        }else{
            $status = 1;
        }
        ChildCategory::where('id',$id)->update(['status'=>$status]);
        return redirect()->back()->with(FlashMsg::item_new(' Status Change Success'));
    }

    public function edit_child_category(Request $request)
    {

//        return $request->all();

        $request->validate(
            [
                'name' => 'required|max:191|unique:child_categories,name,'.$request->up_id,
                'category_id'=> 'required',
                'sub_category_id'=> 'required',
                'slug'=> 'max:191|unique:child_categories,slug,'.$request->up_id,
            ],
            [
                'name.unique' => __('Child Category Already Exists.'),
                'slug.unique' => __('Slug Already Exists.'),
            ]
        );


        $old_slug = ChildCategory::select('slug')->where('id',$request->up_id)->first();
        $old_image = ChildCategory::select('image')->where('id',$request->up_id)->first();
        ChildCategory::where('id',$request->up_id)->update([
            'name'=>$request->name,
            'category_id'=>$request->category_id,
            'sub_category_id'=>$request->sub_category_id,
            'slug'=>$request->slug ?? $old_slug->slug,
            'image'=>$request->image ?? $old_image->image,
        ]);
        return redirect()->back()->with(FlashMsg::item_new('Child Category Update Success'));
    }


    public function delete_childcategory($id){
        ChildCategory::find($id)->delete();
        return redirect()->back()->with(FlashMsg::item_new('Child Category Deleted Success'));
    }

    public function bulk_action(Request $request){
        ChildCategory::whereIn('id',$request->ids)->delete();
        return response()->json(['status' => 'ok']);
    }

    // category select change to sub category in modal data
    public function get_subcategory_by_category_id(Request $request){
        $category_id = $request->category_id;
        $subcategories = Subcategory::where('category_id',$category_id)->where('status',1)->get();
        $data = '';
        foreach ($subcategories as $sub){
            $id = $sub->id;
            $name = $sub->name;
    $data.= <<<ITEM
       <option value="{$id}">{$name}</option>
ITEM;
  }
        return response()->json(['markup' => $data]);
    }

}

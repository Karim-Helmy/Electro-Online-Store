<?php

namespace App\Http\Controllers\Web;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Model\Cart ;
//use App\Model\DepartmentProducts;
use App\Model\Products ;
use App\Model\ProductsGallary ;
use App\Model\ProductsColor ;
use App\Model\ProductsSize ;
use App\Model\AboutUs;
use App\Model\ShoppingCart ;
use App\Model\Wishlist ;
use App\Model\Country ;
use App\User;
use App\Admin;
use App\Model\Order ;
use App\Model\OrderItem ;
use App\Model\DepartmentProducts as Dep;
use App\Model\ContactUs;
use App\Model\SliderImage;
use App\Model\Faq ;
use Validator;
use Session;
use Auth;

class HomeController extends Controller
{

    public function index()
    {
        $allproducts = SliderImage::orderBy('id','desc')->get();
        $featured = Products::inRandomOrder()->take(6)->get();
        $onsale = Products::inRandomOrder()->take(6)->get();
        $toprate = Products::inRandomOrder()->take(6)->get();
        $best = Products::inRandomOrder()->take(4)->get();
        $best2 = Products::inRandomOrder()->take(4)->get();
        $laptops = Products::inRandomOrder()->take(8)->get();
        $widget = Products::orderBy('id','desc')->take(5)->get();
        $department = Dep::where('parent','=',0)->take(3)->get();
        $brands=Dep::where('parent','>',0)->get();

        return view(app('f').'.home',['allproducts'=>$allproducts , 'department'=>$department, 'featured'=>$featured, 'onsale'=>$onsale, 'toprate'=>$toprate, 'best'=>$best, 'best2'=>$best2, 'widget'=>$widget, 'brands'=>$brands,'laptops'=>$laptops]);
    }

    public function single($id)
    {
        $product  = Products::find($id);
        $department = Dep::where('id','=',$product->dep_id)->pluck('en_name');
        $similarProduct = Products::where('dep_id',$product->dep_id)->take(3)->orderBy('id','desc')->get();
        $ratedProduct = Products::where('dep_id',$product->dep_id)->get();
        $widget = Products::take(5)->orderBy('id','desc')->get();
        return view(app('f').'.single_product',['title'=>trans('admin.single_product'),'department'=>$department,'product'=>$product , 'similarProduct'=>$similarProduct ,'ratedProduct'=>$ratedProduct,'widget'=>$widget]);
    }

    public function getAddToCart(Request $request, $id)
    {
        $product  = Products::find($id);
        $adde = new ShoppingCart;
        $adde->user_id    = Auth::user()->id;
        $adde->product_id = $product->id;
        $adde->price = $product->price;
        $adde->weight = $product->weight;
        $adde->vendor_id = $product->user_id;
        $adde->vendor_type = $product->user_type;
        $adde->save();

        return back();
    }



    public function getCart()
    {
        $product = ShoppingCart::where('user_id','=',Auth::user()->id)->get()->all();
        $total =  ShoppingCart::where('user_id','=',Auth::user()->id)->sum('price');
        $totalweight =  ShoppingCart::where('user_id','=',Auth::user()->id)->sum('weight');
        return view(app('f').'.shopping-cart' , ['product'=>$product , 'total'=>$total, 'totalweight'=>$totalweight]);
    }



       public function billing()
    {
        
        
        return view(app('f').'.track');
    }
     public function track(Request $request)
    {
            $rules = [
            'code' => 'required',
            'email' => 'required',
            ];
        $Validator   = Validator::make($request->all(),$rules);
        $Validator->SetAttributeNames ([
            'code' => trans('admin.code'),
            'email' => trans('admin.email'),
         
        ]);
        if($Validator->fails())
        {
            return back()->withInput()->withErrors($Validator);
        }else{
        $order = Order::where('code','=',$request->input('code'))->first();
        
            $orderItem  = OrderItem::where('order_id','=',$order->id)->get();
      

        return view(app('f').'.track')->with('order',$order)->with('orderItem',$orderItem);
    }
    }
    /**
     * Remove the specified item from shopping_cart.
     *

     */
    public function destroyitem($id) {
        $delete = ShoppingCart::find($id);
        $delete->delete();
        return back();
    }

    
    public function addtowishlist(Request $request, $id)
    {
        $product  = Products::find($id);
        $adde = new Wishlist;
        $adde->user_id    = Auth::user()->id;
        $adde->product_id = $product->id;
        $adde->save();

        return back();
    }

      public function getWishlist()
    {
        $product = Wishlist::where('user_id','=',Auth::user()->id)->get()->all();
       
        return view(app('f').'.wishlist' , ['product'=>$product]);
    }


      public function DestroyItemFromWishlist($id) {
        $delete = Wishlist::find($id);
        $delete->delete();
        return back();
    }

    public function checkout()
    {
        $cities =  Country::where('parent','!=',null)->get()->all();
        $product  = ShoppingCart::where('user_id','=',Auth::user()->id)->get()->all();
        $total =  ShoppingCart::where('user_id','=',Auth::user()->id)->sum('price');
        $totalweight =  ShoppingCart::where('user_id','=',Auth::user()->id)->sum('weight');

        return view(app('f').'.checkout', ['product'=>$product , 'total'=>$total ,'cities'=>$cities, 'totalweight'=>$totalweight]);
    }

    public function PlaceOrder(Request $request)
    {

        $total =  ShoppingCart::where('user_id','=',Auth::user()->id)->sum('price');
        
        $shipping = Country::where('id','=',$request->input('city'))->sum('shipping');
        
        $subtotal = $shipping + $total;
       
        $totalweight =  ShoppingCart::where('user_id','=',Auth::user()->id)->sum('weight');
        $rules = [
            'city' => 'required',
            'name' => 'required',
            'address' => 'required',
            'email' => 'required|email',
            'phone' => 'required|numeric',
        ];
        $Validator   = Validator::make($request->all(),$rules);
        $Validator->SetAttributeNames ([
            'city' => trans('admin.city'),
            'name' => trans('admin.name'),
            'address' => trans('admin.address'),
            'email' => trans('admin.email'),
            'phone' => trans('admin.phone'),
        ]);
        if($Validator->fails())
        {
            return back()->withInput()->withErrors($Validator);
        }else{
            $add = new Order;
            $add->user_id             = Auth::user()->id;
            $add->country_id          = $request->input('city');
            $add->name                = $request->input('name');
            $add->address             = $request->input('address');
            $add->email               = $request->input('email');
            $add->phone               = $request->input('phone');
            $add->level               = 'prepare';
            $add->code               = '#'.rand(11,00).time().$add->id;
           
            if ($totalweight > 1){
            for ($i=1 ; $i<=$totalweight ; $i++) {
            $subtotal = $subtotal + 50;
                 }
            }
            $add->price               = $subtotal;
            $add->seen               = 0;
            $add->save();

            $lastid = $add->id;
            $product  = ShoppingCart::where('user_id','=',Auth::user()->id)->get()->all();
            foreach ($product as $item) {
                $addOrderItems = new OrderItem;
                $addOrderItems->order_id = $lastid;
                $addOrderItems->product_id = $item->product_id;
                $addOrderItems->item_price = $item->price;
                $addOrderItems->vendor_id = $item->vendor_id;
                $addOrderItems->vendor_type = $item->vendor_type;
                $addOrderItems->save();
                $item->delete();
            }
           
        }
       $order  = Order::where('id','=',$lastid)->first();
            $orderItem = OrderItem::where('order_id','=',$order->id)->get()->all();
          return view(app('f').'.done', ['order'=>$order , 'orderItem'=>$orderItem]);
        
        
    }

    public function products()
    {
        $brands=Dep::where('parent','>',0)->get();
        $departments=Dep::where('parent',0)->get();
        $widget = Products::orderBy('id','desc')->take(5)->get();
        $products=Products::paginate(12);
        return view('front.shop', ['products'=>$products , 'departments'=>$departments ,'widget'=>$widget ,'brands'=> $brands]);
    }
     public function faq()
    {
 
         $faq = Faq::orderBy('id','desc')->get();

        return view('front.faq')->with('faq',$faq);
    }

    public function departments()
    {
        $departments=Dep::where('parent',0)->get();

        return view('front.categories')->with('departments',$departments);
    }

    public function childDepartments(Request $request)
    {
        $data =Dep::where('parent','=',$request->id)->get();

        return response()->json($data);
    }

    public function productDepartment(Request $request)
    {
        $data=Products::where('dep_id', $request->id)->get();

        return response()->json($data);

    }

    public function singledep(Request $request,$id)
    {
        $brands=Dep::where('parent','>',0)->get();
        $departments=Dep::where('parent',0)->get();
        $widget = Products::orderBy('id','desc')->take(5)->get();
        $department  = Dep::find($id);
        $products = Products::where('dep_id','=',$department->id)->get();
        $similarProduct = Products::where('dep_id',$department->id)->take(3)->orderBy('id','desc')->get();
        $ratedProduct = Products::where('dep_id',$department->id)->get();
        $lastPosted = Products::take(5)->orderBy('id','desc')->get();
        return view(app('f').'.category',['title'=>trans('admin.single_product'),'department'=>$department,'products'=>$products , 'similarProduct'=>$similarProduct ,'ratedProduct'=>$ratedProduct,'lastPosted'=>$lastPosted , 'departments'=>$departments ,'widget'=>$widget ,'brands'=> $brands]);

    }
       public function owner(Request $request)
    {
        $brands=Dep::where('parent','>',0)->get();
        $departments=Dep::where('parent',0)->get();
        $widget = Products::orderBy('id','desc')->take(5)->get();
        if($request->user_type == 'admin'){
        $department  = Admin::where('id','=',$request->user_id)->first();
        
         $products = Products::where('user_id','=',$department->id)->get();
        }else{
          $department  = User::where('id','=',$request->user_id)->first();
        
         $products = Products::where('user_id','=',$department->id)->get();
            
        }
       
        $similarProduct = Products::where('dep_id',$department->id)->take(3)->orderBy('id','desc')->get();
        $ratedProduct = Products::where('dep_id',$department->id)->get();
        $lastPosted = Products::take(5)->orderBy('id','desc')->get();
        return view(app('f').'.category',['title'=>trans('admin.single_product'),'department'=>$department,'products'=>$products , 'similarProduct'=>$similarProduct ,'ratedProduct'=>$ratedProduct,'lastPosted'=>$lastPosted , 'departments'=>$departments ,'widget'=>$widget ,'brands'=> $brands]);

    }
    public function contactus()
    {
        return view('front.contactus');
    }

    public function addContact(Request $request)
    {
        //  return
        $this->validate(request(), [
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'subject' => 'required|string|max:255',
            'message' => 'required|string|max:255',
        ]);
        $contact = new ContactUs;
        $contact->name=$request->name;
        $contact->email=$request->email;
        $contact->subject=$request->subject;
        $contact->message=$request->message;
        $contact->save();
        return redirect('/contactus')->with('success','this message has been send');

    }

    public function aboutus ()
    {
        $about=AboutUs::find(1);
        return view('front.aboutus')->with('about',$about);
    }

}

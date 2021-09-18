<?php

namespace App\Http\Controllers;
use App\Article;
use App\Banner;
use App\Brand;
use App\Category;
use App\Contact;
use App\Photo;
use App\Product;
use App\Review;
use App\Tour;
use App\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class HomeController extends GeneralController
{
    public function __construct()
    {
        parent::__construct();
    }
    public function index()
    {
    $hot_Product = Product::where('is_hot',1)->orderBy('position','ASC')->limit(6)
                                                                        ->get();

    $hot_partner = Brand::where('is_active',1)->orderBy('position','ASC')->limit(5)
                                                                        ->get();
    $hot_news= Article::where(['is_active'=>1],['is_hot'=>1])
            ->limit(0)
            ->orderBy('id','desc')
            ->get();
    $article = Article::where (['is_active'=>1],['is_hot'=>0])
            ->limit(4)
            ->orderBy('id','desc')
            ->get();
    $hot_Banner = Banner::where('is_active',1)->orderBy('position','ASC')->limit(10)
            ->get();
        return view('frontend.home.index', [
        'hot_Product'=>$hot_Product,
        'hot_partner'=>$hot_partner,
        'hot_news'=>$hot_news,
        'article'=>$article,
        'hot_Banner'=>$hot_Banner,
        ]);
    }
    /*
     * Chi tiết sản phẩn - dịch vụ
     */
    public function detailProduct($slug)
    {
        $product = Product::where(['is_active' => 1,'slug' => $slug])->first();

        $sameProducts  = Product::where([
            ['is_active', '=', 1],
            ['id','<>',$product->id],
            ['category_id','=',$product->category_id]
        ])->orderBy('id','desc')
            ->orderBy('position','ASC')
            ->limit(4)
            ->get();

        return view('frontend.product.detail',[
            'product' => $product,
            'sameProducts' => $sameProducts
        ]);
    }
    public function contact()
    {
        return view('frontend.home.contact');
    }
    public function postContact(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'phone' => 'required',
            'email' => 'required',
            'address' => 'required',
            'title' => 'required',
            'content' => 'required',
        ],[
            'name.required' => 'Bạn chưa nhập họ tên',
            'phone.required' => 'Bạn chưa nhập số điện thoại',
            'email.required' => 'Bạn chưa nhập email',
            'address.required' => 'Bạn chưa nhập địa chỉ',
            'title.required' => 'Bạn chưa nhập yêu cầu',
            'content.required' => 'Bạn chưa nhập nội dung',
        ]);
        $name  = $request->input('name');
        $phone  = $request->input('phone');
        $email  = $request->input('email');
        $address  = $request->input('address');
        $title  = $request->input('title');
        $content  = $request->input('content');

        $contact = new Contact();
        $contact->name = $name;
        $contact->phone = $phone;
        $contact->email = $email;
        $contact->address = $address;
        $contact->title = $title ;
        $contact->content = $content;
        $contact->save();

        // chuyen dieu huong trang
        return redirect()->route('home.contact')->with('msg', 'Bạn đã gửi tin nhắn thành công');
    }

    // lấy san phan theo danh mục


    public function product()
    {
        //b1 lấy dữ liệu từ bản category
        $list = [];
        $category = $this->categories;

        foreach ($category as $key=>$categories){
            if ($categories->id !=0){
                $ids = [$categories->id];

                $list[$key] ['category'] = $category;


                $list[$key] ['product'] =  Product::where('is_active',1)->whereIn('category_id',$ids)->orderBy('position','ASC')->limit(10)
                    ->get();

            }
        }
        return view('frontend.product.index',['list'=>$list]);
        return view('frontend.product.detail');
    }
    public function detail()
    {
        return view('frontend.product.detail');

    }
    public function search()
    {
        return view('frontend.search.index');
    }
    public function Blog()
    {
        return view('frontend.Blog.detailBlog');
    }
    public function checkout()
    {
        return view('frontend.checkout.index');
    }
    public function about()
    {
        return view('frontend.about.index');
    }
    public function news()
    {
        // lấy tất cả danh sach tin tuc từ bé đen lon trang thái là is_active
        $hot_news = Article::where(['is_active'=>1])->limit(5)
            ->orderBy('position','asc')
            ->get();

        return view('frontend.Blog.index',[
            'hot_news' => $hot_news,
        ]);
    }

    public function newsList($slug)
    {
        $newsList = Article::where(['is_active' => 1,'slug' => $slug])->first();

        return view('frontend.newsList',[
            'newsList' => $newsList,
        ]);
    }
}

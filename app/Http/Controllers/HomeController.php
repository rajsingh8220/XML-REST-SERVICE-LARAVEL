<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use View;
use App\Listing;
use App\Address;
use App\MlsDetail;
use App\Photo;

class HomeController extends Controller{
    public function __construct() {
        ini_set('post_max_size', '500M');
        ini_set('upload_max_filesize', '500M');
    }
    public function getHome(){
        return view('welcome'); 
    }
    
    public function processXML(Request $request){
        if($request['xml_file']->isValid()){
            
            $file = $request->file('xml_file');
            $mime = $request->file('xml_file')->getMimeType();
            $mime = explode("/", $mime);
            $data['mime'] = $mime[1];
            $data['saveMsg'] = "failed";
            if($mime[1]=="xml"){
                $data['message'] = "Data uploaded";
                $data['status'] = "success";
                $xml = simplexml_load_file($file);
                $data['xml'] = $xml;
                $xmlArray = $this->parseMyListingXML($xml);
                $data['listingArray'] = $xmlArray;
                //Note
                //get all data || Duplicate date upload must be checked
                //If there will be enough time then i will check duplicate date upload
                
                $save = $this->saveData($xmlArray);
                $data['saveMsg'] = $save;
            }
            else{
                $data['message'] = "Only XML file allowed (.xml)";
                $data['status'] = "failed";
            }
            
            
            return View::make('parsedXML')->with('data', $data);
        }
        
        
    }
    private function parseMyListingXML($xml){
        //$xmlObject = $data['xml'];
        define("XMLNS_COMMON", "http://rets.org/xsd/RETSCommons");
        $array = array();
        foreach($xml as $obj){
            $inner = array(
              "ListPrice"=> (string)$obj->ListPrice,
              "ListingURL"=> (string)$obj->ListingURL,
              "Bedrooms"=> (string)$obj->Bedrooms,
              "Bathrooms"=> (string)$obj->Bathrooms,
              "PropertyType"=> (string)$obj->PropertyType,

                "ListingKey"=> (string)$obj->ListingKey,
                "ListingCategory"=> (string)$obj->ListingCategory,
                "ListingStatus"=> (string)$obj->ListingStatus,
                "ListingDescription"=> (string)$obj->ListingDescription,
                
                
                "MlsId"=> (string)$obj->MlsId,
                "MlsName"=> (string)$obj->MlsName,
                "MlsNumber"=> (string)$obj->MlsNumber,
                
                
                "FullStreetAddress" => (string)$obj->Address->children(XMLNS_COMMON),
                "City" => (string)$obj->Address->children(XMLNS_COMMON)->City,
                "StateOrProvince" => (string)$obj->Address->children(XMLNS_COMMON)->StateOrProvince,
                "PostalCode" => (string)$obj->Address->children(XMLNS_COMMON)->PostalCode,
                "Country" => (string)$obj->Address->children(XMLNS_COMMON)->Country,
                
                "Photos"=>  $obj->Photos->children()
                
            );
            $array[] = $inner;
            
        }
        return $array;
    }
    
    public function saveData($data){
      
            foreach($data as $d){

                $listing = new Listing();
                $listing->ListPrice = $d['ListPrice'];
                $listing->ListingURL = $d['ListingURL'];
                $listing->Bedrooms = $d['Bedrooms'];
                $listing->Bathrooms = $d['Bathrooms'];
                $listing->PropertyType = $d['PropertyType'];
                $listing->ListingKey = $d['ListingKey'];
                $listing->ListingCategory = $d['ListingCategory'];
                $listing->ListingStatus = $d['ListingStatus'];
                $listing->ListingDescription = $d['ListingDescription'];
                
                $list =  Listing::where('ListingKey',$listing->ListingKey)->first();
                if($list==null||$list==""||$list===null){
                    $listing->save(); 
                }
                else{
                    return "failed";
                }
                
                $lid = $listing->id;


                //address info
                $address = new Address();
                $address->lid = $lid;
                $address->FullStreetAddress = $d['FullStreetAddress'];
                $address->City = $d['City'];
                $address->StateOrProvince = $d['StateOrProvince'];
                $address->PostalCode = $d['PostalCode'];
                $address->Country = $d['Country'];
                $address->save();

                //mls info
                $mls = new MlsDetail();
                $mls->lid = $lid;
                $mls->MlsId = $d['MlsId'];
                $mls->MlsName = $d['MlsName'];
                $mls->MlsNumber = $d['MlsNumber'];
                $mls->save();

                //Photo info
                foreach ($d['Photos'] as $p){
                    $photo = new Photo();
                    $photo->lid = $lid;
                    $photo->MediaModificationTimestamp = (string)$p->MediaModificationTimestamp;
                    $photo->MediaURL = (string)$p->MediaURL;
                    $photo->save();

                }

            }
            return "success";
        
    }
    
    public function getListings(){
        $listing = Listing::orderBy('created_at','desc')->paginate(10);
        return view('listing',['listings'=>$listing]);
    }
    
    public function getAllListings(){
        $listing = Listing::with(array('address','mls_detail','photos'))->get();
        return response()->json(['message'=>$listing],200);
    }
    
    public function getListingByFilterOrder(Request $req){
        $filter=$req->filter;
        if($filter=="ListingDate"){
            $order = $req->order;
            $listing = Listing::with(array('address','mls_detail','photos'))->orderBy("created_at",$order)->get();
        }
        else if($filter=="photos"){
            $listing = Photo::get();
        }
        else{
            $order = $req->order;
            $listing = Listing::with(array('address','mls_detail','photos'))->orderBy($filter,$order)->get();
        }
        
        return response()->json(['message'=>$listing],200);
    }
    
     public function updateStatusByID($id){
        $listing = Listing::where('id',$id)->first();
        if($listing->ListingStatus=="Active"){
            $listing->ListingStatus = "Disabled";
        }
        else{
            $listing->ListingStatus = "Active";
        }
        $listing->update();
        return response()->json(['message'=>$listing],200);
    }
    //

}

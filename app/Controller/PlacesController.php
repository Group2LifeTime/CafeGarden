<?php

class PlacesController extends AppController {

    var $name = "Places";
    var $helpers = array('Html', 'Form', 'Js', 'Address');
    var $uses = array('Service', 'Place', 'Purport', 'ServicesPlace', 'PlacesPurport');

    public function index() {
        $this->layout = "template";
        $this->set('title_for_layout', 'Cafe Garden | Welcome');
        $places = $this->Place->find('all', array(
            'order' => array('Place.id asc'),
            'limit' => 3,
            'offset' => 0
        ));

        $services = $this->Service->find('list', array(
            'fields' => array('Service.code', 'Service.name'),
                )
        );
        $purports = $this->Purport->find('list', array(
            'fields' => array('Purport.code', 'Purport.name'),
                )
        );
        $this->set("places", $places);
        $this->set("services", $services);
        $this->set("purports", $purports);
    }

    public function place($id) {
        $place = $this->Place->findById($id);
        $this->layout = "template";
        $this->set('title_for_layout', $place['Place']['name'] . ' | Cafe Garden');
        $this->set('place', $place);
    }

    /**
     * 
     * Hàm load thêm dữ liệu khi người dùng kéo scroll xuống dưới
     */
    public function loading() {
        $this->autoRender = false;
        $this->request->onlyAllow('ajax');

        //Lấy thông tin client gửi lên
        $start = $_POST['start'];
        $arr = $this->Place->find('all', array(
            'order' => 'Place.id asc',
            'limit' => 3,
            'offset' => $start
        ));


        return json_encode($arr);
    }

    /**
     * Hàm tìm kiếm dữ liệu khi người dùng lựa chọn tiêu chí tìm kiếm
     */
    public function advance_search() {
        $this->autoRender = false;
        $this->request->onlyAllow('ajax');

        //Lấy thông tin client gửi lên
        $ser = $_POST['ser'];
        $pur = $_POST['pur'];
        $street = $_POST['street'];
        $pro = $_POST['pro'];
        $cat = $_POST['cat'];

        //Kiểm tra thông tin của các biến gửi tới và tách mảng giá trị
        $place_id_ser = array();
        $place_id_pur = array();
        $places = array();
        
        if ($ser != "") {
            $arr_ser = explode(",", $ser);
            //Tìm tất cả các quán có dịch vụ tương ứng 

            $place_ser = $this->ServicesPlace->find('all', array(
                'conditions' => array(
                    'ServicesPlace.services_id' => $arr_ser
                ),
                'fields' => 'DISTINCT ServicesPlace.places_id',
                'order' => 'ServicesPlace.id asc',
            ));
            //Duyệt qua tất cả các id của quán
            foreach ($place_ser as $item){
                $place_id_ser[] = $item['ServicesPlace']['places_id'];
            }
        }
        if ($pur != "") {
            $arr_pur = explode(",", $pur);
            
            //Đếm số phần tử của mảng các dịch vụ được chọn
            $num_pur = count($arr_pur);
            //Tìm tất cả các quán có mục đích tương ứng
            $place_pur = $this->PlacesPurport->find('all', array(
                'conditions' => array(
                    'PlacesPurport.purports_id' => $arr_pur,
                ),
                'fields' => 'DISTINCT PlacesPurport.places_id',
                'order' => 'PlacesPurport.id asc'
            ));
            //Duyệt qua tất cả các id của quán
            foreach ($place_pur as $item){
                $place_id_pur[] = $item['PlacesPurport']['places_id'];
            }
        }
        
        //Nếu mà hai mảng đều rỗng thì tìm các quán với giá trị đường phố nhập vào
        if((count($place_id_ser)==0)&&(count($place_id_pur)==0)){
            $places = $this->Place->find('all',array(
                'conditions'=>array(
                    'Place.street LIKE'=>"%$street%"
                ),
                'order'=>'Place.id asc'
            ));
        }else if((count($place_id_ser)!= 0)&&(count($place_id_pur)==0)){
            $places = $this->Place->find('all', array(
                'conditions'=>array(
                    'Place.code'=>$place_id_ser,
                    'Place.street LIKE'=>"%$street%"
                ),
                'order'=>'Place.id asc'
            ));
        }else if((count($place_id_pur)!= 0)&&(count($place_id_ser)==0)){
            $places = $this->Place->find('all', array(
                'conditions'=>array(
                    'Place.code'=>$place_id_pur,
                    'Place.street LIKE'=>"%$street%"
                ),
                'order'=>'Place.id asc'
            ));
        }else{//Lấy giao của hai mảng id của quán
            $arr_pur_ser = array_intersect($place_id_pur, $place_id_ser);
            $places = $this->Place->find('all', array(
                'conditions'=>array(
                    'Place.code'=>$arr_pur_ser,
                    'Place.street LIKE'=>"%$street%"
                ),
                'order'=>'Place.id asc'
            ));
        }
        
        return json_encode($places);
    }

    /**
     * Hàm lấy thông tin các địa điểm gửi về khi search map
     */
    
    function search_map(){
        $this->autoRender = false;
        $this->request->onlyAllow('ajax');
        
        $pleaces_map = $this->Place->find('all');
        return json_encode($pleaces_map);
    }
}

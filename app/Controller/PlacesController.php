<?php
class PlacesController extends AppController{
	var $name = "Places";
	
	public function index(){
		$this->layout = "template";
		$this->set('title_for_layout','Cafe Garden | Welcom');
		
		$places = $this->Place->find("all");
		$this->set("places",$places);
	}
	
	public function place($id){
		$this->layout = "template";
		$this->set('title_for_layout',$id.' | Cafe Garden');
		
	}
}
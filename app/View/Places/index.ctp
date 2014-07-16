<?php 
// 	echo '<pre>';
// 	print_r($places);
// 	echo '</pre>';
	
	
?>

<div class="content" id="index">
			<div class="sidebar col-md-3">

				<div class="panel ">
				  <div class="panel-heading">
				    <h3 class="panel-title">Tỉnh thành</h3>
				  </div>
				  <div class="panel-body">
				    <h4>Chọn tỉnh thành</h4>
				    <select class="form-control" id="select">
			          <option>--Tất cả--</option>
			          <option>Hà Nội</option>
			          <option>Nghệ An</option>
			          <option>Đà Nẵng</option>
			          <option>Tp.Hồ Chí Minh</option>
			        </select>
			        <div class="area">
			        	<ul class="list-group">
			        		<li class="list-group-item">
			        			<span class="badge">14</span>
			        			<input id="demo_box_1" class="css-checkbox" type="checkbox" />
					  			<label for="demo_box_1" name="demo_lbl_1" class="css-label">Đống Đa</label>
			        		</li>
			        		<li class="list-group-item">
			        		<span class="badge">12</span>
			        			<input id="demo_box_2" class="css-checkbox" type="checkbox" />
					  			<label for="demo_box_2" name="demo_lbl_2" class="css-label">Cầu Giấy</label>
			        		</li>
			        		<li class="list-group-item">
			        			<span class="badge">3</span>
			        			<input id="demo_box_3" class="css-checkbox" type="checkbox" />
					  			<label for="demo_box_3" name="demo_lbl_3" class="css-label">Hai Bà Trưng</label>
			        		</li>
			        		<li class="list-group-item">
			        			<span class="badge">2</span>
			        			<input id="demo_box_4" class="css-checkbox" type="checkbox" />
					  			<label for="demo_box_4" name="demo_lbl_4" class="css-label">Long Biên</label>
			        		</li>
			        	</ul>
			          
			        </div>
				  </div>
				</div>

				<div class="panel ">
				  <div class="panel-heading">
				    <h3 class="panel-title">Tìm theo đường/phố</h3>
				  </div>
				  <div class="panel-body">
				    <div class="form-group">
					  <input type="text" class="form-control" id="inputDefault" placeholder="Tên đường/phố">
					</div>
				  </div>
				</div>

				<div class="panel ">
				  <div class="panel-heading">
				    <h3 class="panel-title">Dịch vụ</h3>
				  </div>
				  <div class="panel-body">
				    <ul class="list-group">
			        		<li class="list-group-item">
			        			<input id="s1" class="css-checkbox" type="checkbox" />
					  			<label for="s1" name="s1" class="css-label">Internet Wifi</label>
			        		</li>
			        		<li class="list-group-item">
			        			<input id="s2" class="css-checkbox" type="checkbox" />
					  			<label for="s2" name="s2" class="css-label">Giữ xe miễn phí</label>
			        		</li>
			        		<li class="list-group-item">
			        			<input id="s3" class="css-checkbox" type="checkbox" />
					  			<label for="s3" name="s3" class="css-label">Chỗ trẻ em chơi</label>
			        		</li>
			        		<li class="list-group-item">
			        			<input id="s4" class="css-checkbox" type="checkbox" />
					  			<label for="s4" name="s4" class="css-label">Bàn bia</label>
			        		</li>
			        	</ul>
				  </div>
				</div>

				<div class="panel ">
				  <div class="panel-heading">
				    <h3 class="panel-title">Mục đích</h3>
				  </div>
				  <div class="panel-body">
				    <ul class="list-group">
			        		<li class="list-group-item">
			        			<input id="m1" class="css-checkbox" type="checkbox" />
					  			<label for="m1" name="m1" class="css-label">Nghe nhạc</label>
			        		</li>
			        		<li class="list-group-item">
			        			<input id="m2" class="css-checkbox" type="checkbox" />
					  			<label for="m2" name="m2" class="css-label">Wifi</label>
			        		</li>
			        	</ul>
				  </div>
				</div>

				<div class="panel ">
				  <div class="panel-heading">
				    <h3 class="panel-title">Khoảng cách(km)</h3>
				  </div>
				  <div class="panel-body">
				    <div class="form-group">
					  <input type="text" class="form-control" id="inputDefault" placeholder="km">
					</div>
				  </div>
				</div>

				<div class="panel ">
				  <div class="panel-heading">
				    <h3 class="panel-title">Loại quán</h3>
				  </div>
				  <div class="panel-body">
				    <select class="form-control" id="select">
			          <option>--Tất cả--</option>
			          <option>Bình dân</option>
			          <option>Tiêu chuẩn</option>
			          <option>Sang trọng</option>	
			        </select>
				  </div>
				</div>

				<div class="panel ">
				  <div class="panel-heading">
				    <h3 class="panel-title">Loại món</h3>
				  </div>
				  <div class="panel-body">
				    <h4>Loại món</h4>
				    <ul class="list-group">
			        		<li class="list-group-item">
			        			<input id="s1" class="css-checkbox" type="checkbox" />
					  			<label for="s1" name="s1" class="css-label">Internet Wifi</label>
			        		</li>
			        		<li class="list-group-item">
			        			<input id="s2" class="css-checkbox" type="checkbox" />
					  			<label for="s2" name="s2" class="css-label">Giữ xe miễn phí</label>
			        		</li>
			        		<li class="list-group-item">
			        			<input id="s3" class="css-checkbox" type="checkbox" />
					  			<label for="s3" name="s3" class="css-label">Chỗ trẻ em chơi</label>
			        		</li>
			        		<li class="list-group-item">
			        			<input id="s4" class="css-checkbox" type="checkbox" />
					  			<label for="s4" name="s4" class="css-label">Bàn bia</label>
			        		</li>
			        	</ul>
				  </div>
				</div>

				<div class="panel ">
				  <div class="panel-heading">
				    <h3 class="panel-title">Giờ phục vụ</h3>
				  </div>
				  <div class="panel-body">
				    <select class="form-control" id="select">
			          <option>--Tất cả--</option>
			          <option>01:00</option>
			          <option>02:00</option>
			        </select>
				  </div>
				</div>

			</div><!-- End sidebar -->

			<div class="main-content col-md-9">
				<div class="panel">
				  <div class="panel-heading container-fluid">
				    <h3 class="panel-title col-md-6">Có <span class="result-total">12/1200<span> kết quả</h3>
				    <div class="col-md-4 navbar-right">
					    <select class="form-control input-sm" id="sort">
				          <option>----Sắp xếp----</option>
				          <option>Xem nhiều nhất</option>
				          <option>Mới tham gia</option>
				          <option>Nhiều người thích nhất</option>
				        </select>
			        </div>
			        
				  </div>
				  <div class="panel-body container-fluid">
<!-- ************************************************************************************************ -->
				  <?php 
				  	foreach ($places as $place){
						$address = $place['Place']['street'].", ".$place['Place']['district'].', '.$place['Place']['province'].
						
						$xhtml = "";
						$xhtml .= '<div class="row">
				    		<div class="col-xs-6 col-md-3">
							    <a href="#" class="thumbnail">
							      '.$this->Html->image('9.jpg', array('alt' => 'CakePHP')).'
							    </a>
							</div>
							<div class="details col-md-7">
								<a href="#"><h3>'.$place['Place']['name'].'</h3></a>
								<p class="address">'.$address.'</p>
								<p class="decription">
									Chạm Kafe - Coffe shop - wifi - K
                                    Chạm Kafe số 2 Ngõ 52 Giang Văn Minh - Quán café hoạt đông cung cấp các dịch vụ giải khát , fast food kèm theo Wifi, K , Điều hòa . Quán có thiết kế cổ điển, lịch sự phù hợp với nhân viên văn phòng, bạn bè hội họp, hẹn hò.
								</p>
							</div>
							<div class="rating col-md-2">
								<span class="point">2.0</span>
								<ul>
									<li><span>'.$place['Place']['numlike'].'</span> lượt thích</li>
									<li><span>'.$place['Place']['view'].'</span> lượt xem</li>
									<li><span>0</span> món phục vụ</li>
								</ul>
							</div>
				    	</div>';
						echo $xhtml;
					}
				  	
				  ?>
				  		<div class="row">
				    		<div class="col-xs-6 col-md-3">
							    <a href="#" class="thumbnail">
							    <?php echo $this->Html->image('9.jpg', array('alt' => 'CakePHP'));?>
							    </a>
							</div>
							<div class="details col-md-7">
								<a href="#"><h3>Chạm cafe</h3></a>
								<p class="address">1 Giang Văn Minh, Ba Đình, Hà Nội, Việt Nam</p>
								<p class="decription">
									Chạm Kafe - Coffe shop - wifi - K
                                    Chạm Kafe số 2 Ngõ 52 Giang Văn Minh - Quán café hoạt đông cung cấp các dịch vụ giải khát , fast food kèm theo Wifi, K , Điều hòa . Quán có thiết kế cổ điển, lịch sự phù hợp với nhân viên văn phòng, bạn bè hội họp, hẹn hò.
								</p>
							</div>
							<div class="rating col-md-2">
								<span class="point">2.0</span>
								<ul>
									<li><span>0</span> lượt đến</li>
									<li><span>23</span> lượt xem</li>
									<li><span>0</span> món phục vụ</li>
								</ul>
							</div>
				    	</div>

				    	<div class="row">
				    		<div class="col-xs-6 col-md-3">
							    <a href="#" class="thumbnail">
							      <img src="images/9.jpg" alt="...">
							    </a>
							</div>
							<div class="details col-md-7">
								<a href="#"><h3>Chạm cafe</h3></a>
								<p class="address">1 Giang Văn Minh, Ba Đình, Hà Nội, Việt Nam</p>
								<p class="decription">
									Chạm Kafe - Coffe shop - wifi - K
                                    Chạm Kafe số 2 Ngõ 52 Giang Văn Minh - Quán café hoạt đông cung cấp các dịch vụ giải khát , fast food kèm theo Wifi, K , Điều hòa . Quán có thiết kế cổ điển, lịch sự phù hợp với nhân viên văn phòng, bạn bè hội họp, hẹn hò.
								</p>
							</div>
							<div class="rating col-md-2">
								<span class="point">2.0</span>
								<ul>
									<li><span>0</span> lượt đến</li>
									<li><span>23</span> lượt xem</li>
									<li><span>0</span> món phục vụ</li>
								</ul>
							</div>
				    	</div>

				    	<div class="row">
				    		<div class="col-xs-6 col-md-3">
							    <a href="#" class="thumbnail">
							      <img src="images/9.jpg" alt="...">
							    </a>
							</div>
							<div class="details col-md-7">
								<a href="#"><h3>Chạm cafe</h3></a>
								<p class="address">1 Giang Văn Minh, Ba Đình, Hà Nội, Việt Nam</p>
								<p class="decription">
									Chạm Kafe - Coffe shop - wifi - K
                                    Chạm Kafe số 2 Ngõ 52 Giang Văn Minh - Quán café hoạt đông cung cấp các dịch vụ giải khát , fast food kèm theo Wifi, K , Điều hòa . Quán có thiết kế cổ điển, lịch sự phù hợp với nhân viên văn phòng, bạn bè hội họp, hẹn hò.
								</p>
							</div>
							<div class="rating col-md-2">
								<span class="point">2.0</span>
								<ul>
									<li><span>0</span> lượt đến</li>
									<li><span>23</span> lượt xem</li>
									<li><span>0</span> món phục vụ</li>
								</ul>
							</div>
				    	</div>

				    	<div class="row">
				    		<div class="col-xs-6 col-md-3">
							    <a href="#" class="thumbnail">
							      <img src="images/9.jpg" alt="...">
							    </a>
							</div>
							<div class="details col-md-7">
								<a href="#"><h3>Chạm cafe</h3></a>
								<p class="address">1 Giang Văn Minh, Ba Đình, Hà Nội, Việt Nam</p>
								<p class="decription">
									Chạm Kafe - Coffe shop - wifi - K
                                    Chạm Kafe số 2 Ngõ 52 Giang Văn Minh - Quán café hoạt đông cung cấp các dịch vụ giải khát , fast food kèm theo Wifi, K , Điều hòa . Quán có thiết kế cổ điển, lịch sự phù hợp với nhân viên văn phòng, bạn bè hội họp, hẹn hò.
								</p>
							</div>
							<div class="rating col-md-2">
								<span class="point">2.0</span>
								<ul>
									<li><span>0</span> lượt đến</li>
									<li><span>23</span> lượt xem</li>
									<li><span>0</span> món phục vụ</li>
								</ul>
							</div>
				    	</div>

				  </div>
				</div>
			</div><!-- End main-content -->
		</div><!-- End content -->
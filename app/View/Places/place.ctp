
<div class="content container" id="place">
    <div id="header">
        <h1 class="title"><?php echo $place['Place']['name'];?></h1>
        
        <p><?php echo $this->Address->createAddress($place);?></p>
        
        <div id="nav" class="col-md-12">
            <ul class="nav nav-pills">
                <li class="active"><a href="#">Trang chủ</a></li>
                <li><a href="#">Sự kiện</a></li>
                <li><a href="#">Video</a></li>
                <li><a href="#">Map</a></li>
                <li><a href="#">Thực đơn</a></li>
            </ul>
        </div>
    </div><!-- End .header -->


    <div id="side" class="container-fluid wrap-item">
        <div id="side-img" class="col-md-8">
            <?php echo $this->Html->image($place['Place']['image'])?>
        </div>
        <div id="event" class="col-md-4 wrap-item">
            <h4>Sự kiện</h4>
            <ul class="list-group">
                <li class="list-group-item"><a href="#"><img src="images/e1.jpg" /><p>khai trương quán cafe PHỐ NÚI
                            MỪNG KHAI TRƯƠNG GIẢM GIÁ VÀ QUÀ LƯU NIỆM</p></a></li>
                <li class="list-group-item">Sự kiện 2</li>
            </ul>
        </div>
    </div>

    <div id="thucdon" class="container-fluid wrap-item">
        <div id="danhmuc" class="col-md-3">
            <div class="panel">
                <div class="panel-heading">
                    <h3 class="panel-title">Thực đơn</h3>
                </div>
                <ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
                    <li class="active"><a href="#">Đồ uống</a></li>
                    <li ><a href="#">Cafe đá</a></li>
                    <li ><a href="#">Cafe sữa</a></li>
                    <li ><a href="#">Cafe nóng</a></li>
                </ul>
            </div>
        </div>
        <div id="danhsach" class="col-md-9 container-fluid">
            <div class="item col-md-4">
                <h4>Các món sinh tố</h4>
                <p>tất cả các món sinh tố trái cây, thơm ngon, bổ dưỡng cho những ngày hè</p>
                <p class="gia">15000 VNĐ</p>
            </div>
            <div class="item col-md-4">
                <h4>Các món sinh tố</h4>
                <p>tất cả các món sinh tố trái cây, thơm ngon, bổ dưỡng cho những ngày hè</p>
                <p class="gia">15000 VNĐ</p>
            </div>
            <div class="item col-md-4">
                <h4>Các món sinh tố</h4>
                <p>tất cả các món sinh tố trái cây, thơm ngon, bổ dưỡng cho những ngày hè</p>
                <p class="gia">15000 VNĐ</p>
            </div>
            <div class="item col-md-4">
                <h4>Các món sinh tố</h4>
                <p>tất cả các món sinh tố trái cây, thơm ngon, bổ dưỡng cho những ngày hè</p>
                <p class="gia">15000 VNĐ</p>
            </div>
        </div>
    </div><!-- End #thucdon -->

    <div id="chitiet" class="container-fluid wrap-item">
        <div class="ct-item col-md-4">
            <div class="panel  ">
                <div class="panel-heading">
                    <h3 class="panel-title">Giới thiệu</h3>
                </div>
                <div class="panel-body">
                    <p>
                        <?php echo $place['Place']['intro']?>
                    </p>
                </div>
            </div>
        </div>
        <div class="ct-item col-md-4">
            <div class="panel ">
                <div class="panel-heading">
                    <h3 class="panel-title">Dịch vụ</h3>
                </div>
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <h4>Gọi đồ uống, gọi món</h4>
                            <p>Dịch vụ đặt trước đồ uống. Có thể phục vụ tại quán hoặc địa chỉ của khách hàng yêu cầu...</p>
                        </li>
                        <li class="list-group-item">
                            <h4>Gọi đồ uống, gọi món</h4>
                            <p>Dịch vụ đặt trước đồ uống. Có thể phục vụ tại quán hoặc địa chỉ của khách hàng yêu cầu...</p>
                        </li>
                        <li class="list-group-item">
                            <h4>Gọi đồ uống, gọi món</h4>
                            <p>Dịch vụ đặt trước đồ uống. Có thể phục vụ tại quán hoặc địa chỉ của khách hàng yêu cầu...</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="ct-item col-md-4">
            <div class="panel ">
                <div class="panel-heading">
                    <h3 class="panel-title">Liện hệ</h3>
                </div>
                <div class="panel-body">
                    <h4>Số điện thoại: 01288833434</h4>

                    <!-- Dat thong tin ban do-->
                    <div id="gmap">

                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="dichvu" class="container-fluid wrap-item">
        <div class="panel ">
            <div class="panel-heading">
                <h3 class="panel-title">Dịch vụ</h3>
            </div>
            <div class="panel-body">
                <ul class="list-group contairner-fluid">
                    <li class="list-group-item col-md-4">
                        <input id="demo_box_1" class="css-checkbox" type="checkbox" />
                        <label for="demo_box_1" name="demo_lbl_1" class="css-label">Internet Wifi</label>
                    </li>
                    <li class="list-group-item col-md-4">
                        <input id="demo_box_2" class="css-checkbox" type="checkbox" />
                        <label for="demo_box_2" name="demo_lbl_2" class="css-label">Internet Wifi</label>
                    </li>
                    <li class="list-group-item col-md-4">
                        <input id="demo_box_3" class="css-checkbox" type="checkbox" />
                        <label for="demo_box_3" name="demo_lbl_3" class="css-label">Internet Wifi</label>
                    </li>
                    <li class="list-group-item col-md-4">
                        <input id="demo_box_4" class="css-checkbox" type="checkbox" />
                        <label for="demo_box_4" name="demo_lbl_4" class="css-label">Internet Wifi</label>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div id="phuhop" class="container-fluid wrap-item">
        <div class="panel ">
            <div class="panel-heading">
                <h3 class="panel-title">Phù hợp với</h3>
            </div>
            <div class="panel-body">
                <ul class="list-group contairner-fluid">
                    <li class="list-group-item col-md-4">
                        <input id="demo_box_1" class="css-checkbox" type="checkbox" />
                        <label for="demo_box_1" name="demo_lbl_1" class="css-label">Internet Wifi</label>
                    </li>
                    <li class="list-group-item col-md-4">
                        <input id="demo_box_2" class="css-checkbox" type="checkbox" />
                        <label for="demo_box_2" name="demo_lbl_2" class="css-label">Internet Wifi</label>
                    </li>
                    <li class="list-group-item col-md-4">
                        <input id="demo_box_3" class="css-checkbox" type="checkbox" />
                        <label for="demo_box_3" name="demo_lbl_3" class="css-label">Internet Wifi</label>
                    </li>
                    <li class="list-group-item col-md-4">
                        <input id="demo_box_4" class="css-checkbox" type="checkbox" />
                        <label for="demo_box_4" name="demo_lbl_4" class="css-label">Internet Wifi</label>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div id="ttphucvu" class="container-fluid wrap-item">
        <div class="panel ">
            <div class="panel-heading">
                <h3 class="panel-title">Thông tin phục vụ</h3>
            </div>
            <div class="panel-body">
                <ul class="list-group contairner-fluid">
                    <li class="list-group-item">
                        Thời gian phục vụ:06:00 - 23:00
                    </li>
                </ul>
            </div>
        </div>
    </div>

</div><!-- End content -->
<?php

$sp = array();
foreach ($ser as $value) {
    $sp[] = $value['ServicesPlace']['services_id'];
}

//phu hop voi
$pp = array();
foreach ($pur as $value) {
    $pp[] = $value['PlacesPurport']['purports_id'];
}
?>
<div class="content container" id="place">
    <div id="header">
        <h1 class="title"><?php echo $place['Place']['name']; ?></h1>

        <p><?php echo $this->Address->createAddress($place); ?></p>

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
            <!-- Start WOWSlider.com -->
            <iframe src="/CafeGarden/places/slide/<?php echo $place['Place']['id']; ?>" style="width:620px;height:320px;max-width:100%;overflow:hidden;border:none;padding:0;margin:0 auto;display:block;" marginheight="0" marginwidth="0"></iframe>
            <!-- End WOWSlider.com -->
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
                        <?php echo $place['Place']['intro'] ?>
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

    <!-- ***************************************Dich Vu ********************************* -->
    <div id="dichvu" class="container-fluid wrap-item">
        <div class="panel ">
            <div class="panel-heading">
                <h3 class="panel-title">Dịch vụ</h3>
            </div>
            <div class="panel-body">
                <ul class="list-group contairner-fluid">
                    <?php
                    foreach ($services as $service) {
                        $code = $service['Service']['code'];
                        $xhtml = '<li class="list-group-item col-md-4">';
                        if (array_search($code, $sp) === false) {
                            $xhtml .= '<input id="' . $code . '" class="css-checkbox" type="checkbox" disabled="disabled"/>';
                        } else {
                            $xhtml .= '<input id="' . $code . '" class="css-checkbox" type="checkbox" checked="checked" disabled="disabled"/>';
                        }
                        $xhtml .= '<label for="' . $service['Service']['code'] . '" name="' . $service['Service']['code'] . '" class="css-label">' . $service['Service']['name'] . '</label>';
                        $xhtml .= '</li>';
                        echo $xhtml;
                    }
                    ?>
                </ul>
            </div>
        </div>
    </div>

    <!-- ***************************************Phu Hop ********************************* -->
    <div id="phuhop" class="container-fluid wrap-item">
        <div class="panel ">
            <div class="panel-heading">
                <h3 class="panel-title">Phù hợp với</h3>
            </div>
            <div class="panel-body">
                <ul class="list-group contairner-fluid">
                    <?php
                    foreach ($purports as $purport) {
                        $code = $purport['Purport']['code'];
                        $xhtml = '<li class="list-group-item col-md-4">';
                        if (array_search($code, $pp) === false) {
                            $xhtml .= '<input id="' . $code . '" class="css-checkbox" type="checkbox" disabled="disabled"/>';
                        } else {
                            $xhtml .= '<input id="' . $code . '" class="css-checkbox" type="checkbox" checked="checked" disabled="disabled"/>';
                        }

                        $xhtml .= '<label for="' . $code . '" name="' . $code . '" class="css-label">' . $purport['Purport']['name'] . '</label>';
                        $xhtml .= '</li>';
                        echo $xhtml;
                    }
                    ?>
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
                    
                    <?php 
                        
                        $row = '<li class="list-group-item">';
                        $row .= 'Thời gian phục vụ:'.$info[0]['Informations']['timeservice'];
                        $row .= '</li>';          
                        $row .= '<li class="list-group-item">';
                        $row .= 'Ngày nghỉ:'.$info[0]['Informations']['holiday'];
                        $row .= '</li>'; 
                        $row .= '<li class="list-group-item">';
                        $row .= 'Sức chứa:'.$info[0]['Informations']['storage'];
                        $row .= '</li>';
                        $row .= '<li class="list-group-item">';
                        $row .= 'Giá trung bình:'.$info[0]['Informations']['priceavg'];
                        $row .= '</li>'; 
                        $row .= '<li class="list-group-item">';
                        $row .= 'Phương thức thanh toán:'.$info[0]['Informations']['methodpay'];
                        $row .= '</li>';
                        $row .= '<li class="list-group-item">';
                        $row .= 'Ngôn ngữ:'.$info[0]['Informations']['lang'];
                        $row .= '</li>'; 
                        echo $row;
                    ?>
                    
                </ul>
            </div>
        </div>
    </div>

</div><!-- End content -->
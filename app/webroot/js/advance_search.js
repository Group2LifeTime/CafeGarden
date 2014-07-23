
/**
 * 
 * Hàm xử lý đối tượng json gửi từ server về và chèn vào nội dung của trang web
 */

function handlerDataSearch(data) {

    var place = data;
    var x;
    var address = "";
    for (x in place) {
        for (var y in place[x]) {
            address = place[x][y].houseno + ', ' + place[x][y].street + ', ' + place[x][y].district + ', ' + place[x][y].province + ', ' + place[x][y].national;
            var row = '<div class="row">' +
                    '<div class="col-xs-6 col-md-3">' +
                    '<a href="/CafeGarden/places/place/' + place[x][y].id + '" class="thumbnail">' +
                    '<img src="/CafeGarden/img/' + place[x][y].image + '"/>' +
                    '</a>' +
                    '</div>' +
                    '<div class="details col-md-7">' +
                    '<a href="/CafeGarden/places/place/' + place[x][y].id + '"><h3>' + place[x][y].name + '</h3></a>' +
                    '<p class="address">' + address + '</p>' +
                    '<p class="decription">' +
                    place[x][y].intro +
                    '</p>' +
                    '</div>' +
                    '<div class="rating col-md-2">' +
                    '<span class="point">' + place[x][y].vote + '.0</span>' +
                    '<ul>' +
                    '<li><span>' + place[x][y].numlike + '</span> lượt thích</li>' +
                    '<li><span>' + place[x][y].view + '</span> lượt xem</li>' +
                    '<li><span>0</span> món phục vụ</li>' +
                    '</ul>' +
                    '</div>' +
                    '</div>';

            $(".show_more_place").append(row);
        }
    }
}

/**
 * 
 * Hàm gửi thông tin các biến yêu cầu tìm kiếm lên 
 */

function submmit_search(p_ser, p_pur, p_street, p_pro, p_cat) {
    var $loading = $("#loading");
    $.ajax({
        type: 'POST',
        url: "advance_search",
        dataType: 'json',
        data: {
            ser: p_ser,
            pur: p_pur,
            street: p_street,
            pro: p_pro,
            cat: p_cat
        },
        beforeSend: function(xhr) {
            $loading.show();
        },
        success: function(data, textStatus, jqXHR) {
            if (data) {
                handlerDataSearch(data);
            }
        },
        complete: function() {
            $loading.hide();
        }
    });
}

/* 
 * Xử lý các tùy chọn người dùng chọn các tiêu chí tìm kiếm
 */

$(function() {
    var ser = ""; // Lưu các id của dịch vụ được người dùng chọn
    var pur = ""; //Lưu các id của các mục đích của quán được chọn
    var street = " "; //Lưu tên đường mà người dùng nhập vào
    var pro = ""; //Lưu một id của vùng miền mà người dùng chọn
    var cat = ""; //Lưu các id của loại món 

    //Tìm tất cả các thẻ input có kiểu là checkbox và bắt sự kiện chuyển đổi giá trị của nó
    $(".mouse_enter").click(function() {
        $("input[type='checkbox']").change(function() {
            ser = "";
            pur = "";
            //Lọc ra các thẻ được chọn trong khung dịch vụ
            $("input[value='ser']:checked").each(function() {
                ser = ser + $(this).attr("id") + ",";
            });

            //Lọc ra các thẻ được chọn trong khung mục đích
            $("input[value='pur']:checked").each(function() {
                pur = pur + $(this).attr("id") + ",";
            });

            //Xóa nội dung các quán trước đó
            $(".show_more_place").empty();
        }).change();
        //Gửi thông tin lên server
        submmit_search(ser, pur, street, pro, cat);
    });

    //Bắt sự kiện khi nhấn nút search
    $("#search").click(function() {
        street = $("#search_street").val();
        //Xóa nội dung các quán trước đó
        $(".show_more_place").empty();
        //Gửi thông tin tìm kiếm lên server
        submmit_search(ser, pur, street, pro, cat);
    });
});



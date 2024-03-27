import 'package:project_order_food/core/extension/log.dart';
import 'package:project_order_food/core/extension/methods.dart';
import 'package:project_order_food/core/model/field_name.dart';
import 'package:project_order_food/core/model/model.dart';
import 'package:project_order_food/core/model/product.dart';
import 'package:project_order_food/core/model/status_order.dart';
import 'package:project_order_food/locator.dart';
import 'package:project_order_food/ui/view/common_view/loading_view/data_app.dart';

class OrderModel extends Model {
  OrderModel(super.data);
  // Lấy tổng giá trị đơn hàng và định dạng thành tiền tệ Việt Nam
  String get totalPrice => Methods.getPriceVND(data, FieldName.totalPrice);
  // Lấy ID người dùng từ dữ liệu
  String get userID => Methods.getString(data, FieldName.userID);
  // Lấy thông tin sản phẩm từ dữ liệu
  Product get product => Methods.getMap(data, FieldName.product);

  // Nhận trạng thái đơn hàng từ danh sách trạng thái đơn hàng
  StatusOrder get status {
    List<StatusOrder> list = locator<DataApp>().listStatusOdrer;
    for (var e in list) {
      if (e.id == refID) {
        return e;
      }
    }
    logError('Trạng thái status không chính xác z $refID');
    return list.first;
  }

  // Chuyển thời gian tạo đơn hàng sang định dạng dd/MM/yyyy - HH:mm
  @override
  String get createDate =>
      Methods.convertTime(Methods.getDateTime(data, FieldName.createDate),
          defaultFormat: 'dd/MM/yyyy - HH:mm');
}

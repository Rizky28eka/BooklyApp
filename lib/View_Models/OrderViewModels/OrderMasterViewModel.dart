import 'package:get/get.dart';
import '../../Models/OrderModels/OrderMasterModel.dart';
import '../../Repositories/OrderRepository/OrderMasterRepository.dart';

class OrderMasterViewModel extends GetxController {
  var allOrderMaster = <OrderMasterModel>[].obs;
  OrderMasterRepository ordermasterRepository = OrderMasterRepository();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchAllOrderMaster();
  }

  fetchAllOrderMaster() async {
    var ordermaster = await ordermasterRepository.getOrderMaster();
    allOrderMaster.value = ordermaster;
  }

  addOrderMaster(OrderMasterModel ordermasterModel) {
    ordermasterRepository.add(ordermasterModel);
    fetchAllOrderMaster();
  }

  updateOrderMaster(OrderMasterModel ordermasterModel) {
    ordermasterRepository.update(ordermasterModel);
    fetchAllOrderMaster();
  }

  deleteOrderMaster(int id) {
    ordermasterRepository.delete(id);
    fetchAllOrderMaster();
  }
}

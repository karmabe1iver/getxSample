import 'package:get/get.dart';
import 'package:getx2/controllers/storecontroller.dart';

class StoreBinding implements Bindings{
  @override
  void dependencies(){
    Get.lazyPut(() => StoreController());
  }
}
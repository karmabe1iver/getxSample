import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx2/controllers/storecontroller.dart';

class UpdateStoreName extends StatelessWidget {
  UpdateStoreName({Key? key}) : super(key: key);
  //final storeContoller = Get.find<StoreController>();
  final storeController = Get.put(StoreController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
        children: [
          TextField(
            controller: storeController.storeNameEditingController,

          ),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            storeController.updateStoreName(storeController.storeNameEditingController.text);
            Get.snackbar('update', 'store Name ${storeController.storeNameEditingController.text}',
            snackPosition: SnackPosition.BOTTOM
            );
          }, child: Text('Update'
          ,style: TextStyle(fontSize: 20),))
        ],
      ),
    );
  }
}

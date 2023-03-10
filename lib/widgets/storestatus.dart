import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx2/controllers/storecontroller.dart';

class StoreStatus extends StatelessWidget {
  StoreStatus({Key? key}) : super(key: key);
  final storeController = Get.put(StoreController());
  //final storeController = Get.find<StoreController>();

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Is the Store open?",
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 16),
              Obx(
                    () => Switch(
                  onChanged: (value) { storeController.storeStatus(value);
                    Get.snackbar('Store', 'store is ${ storeController.storeStatus(value)?'open':'close'
                    }',snackPosition: SnackPosition.TOP);},
                  activeColor: Colors.green,
                  value: storeController.storeStatus.value,
                ),
              )
            ],
          ),
        ),

    );
  }
}
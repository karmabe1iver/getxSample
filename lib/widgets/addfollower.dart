import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx2/controllers/storecontroller.dart';

class AddFollowerCount extends StatelessWidget {
  AddFollowerCount({Key? key}) : super(key: key);
  final storeController = Get.put(StoreController());

  @override
  Widget build(BuildContext context) {
    return
       Column(
         children: [
           SizedBox(
             height: 20,
             child: FloatingActionButton(
              onPressed: () {storeController.updateFollowerCount();
              },

              child: const Icon(Icons.add ,size: 10,),
      ),
           ),

       Container(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'You have add these many followers to your store',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28),
              ),
              const SizedBox(
                height: 40.0,
              ),
              // Obx(
              //       () => Text(
              //     storeController.follwerCount.value.toString(),
              //     style: const TextStyle(fontSize: 28),
              //   ),
              // )
            ],
          ),
        ),
      ),
    ]
    );
  }
}
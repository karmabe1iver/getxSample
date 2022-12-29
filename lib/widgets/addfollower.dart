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


       Container(
        padding: const EdgeInsets.only(top: 24),
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
                height: 20.0,
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
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               SizedBox(
                 height: 40,
                 child: FloatingActionButton(
                   onPressed: () {storeController.updateFollowerCount();
                   },

                   child: const Icon(Icons.add ,size: 20,),
                 ),
               ),

               SizedBox(
                 height: 40,
                 child: FloatingActionButton(
                   onPressed: () {
                     if(storeController.follwerCount>0)
                       storeController.deleteFollowerCount();
                     else
                       Get.defaultDialog(
                           title: 'Neative number is not posible'
                           ,
                           middleText: 'please GetBack',
                           textConfirm: 'okay'
                           ,
                           confirm: OutlinedButton(onPressed: (){
                             Get.back();
                           }, child: Text('Back',style: TextStyle(fontSize: 20),))
                       );
                   },

                   child: const Text('-',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400)),
                 ),
               ),
             ],
           ),

         ]
    );
  }
}
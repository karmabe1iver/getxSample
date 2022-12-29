import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx2/controllers/storecontroller.dart';
import 'package:getx2/view/themecontoller.dart';
import 'package:getx2/widgets/addfollower.dart';
import 'package:getx2/widgets/storestatus.dart';
import 'package:getx2/widgets/updatestorename.dart';

class Home extends GetView<StoreController> {
  final storeController = Get.put(StoreController());
  final themeController = Get.find<ThemeContoller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: AppColors.spaceCadet,
      appBar: AppBar(
        title: const Text("GetX Store"),
        actions: [IconButton(
          onPressed: () {
            if (Get.isDarkMode) {
              themeController.changeTheme(ThemeData.light());
              themeController.saveTheme(false);
            } else {
              themeController.changeTheme(ThemeData.dark());
              themeController.saveTheme(true); }},
          icon: Get.isDarkMode
              ? const Icon(Icons.light_mode_outlined)
              : const Icon(Icons.dark_mode_outlined),),], ),


      //  drawer: const SideDrawer(),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Text(
                          'Store Name:',
                          style: TextStyle(fontSize: 20),
                        ),
                        fit: FlexFit.tight,
                      ),
                      const SizedBox(width: 20.0),
                      // Wrapped with Obx to observe changes to the storeName
                      // variable when called using the StoreController.
                      Obx(
                        () => Flexible(
                          child: Text(controller.storename.value.toString(),
                              style: const TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          fit: FlexFit.tight,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Text(
                          'Store Followers:',
                          style: TextStyle(fontSize: 20),
                        ),
                        fit: FlexFit.tight,
                      ),
                      const SizedBox(width: 20.0),
                      // Wrapped with Obx to observe changes to the followerCount
                      // variable when called using the StoreController.
                      Obx(
                        () => Flexible(
                          child: Text(
                            controller.follwerCount.value.toString(),
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          fit: FlexFit.tight,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Text(
                          'Status:',
                          style: TextStyle(fontSize: 20),
                        ),
                        fit: FlexFit.tight,
                      ),
                      const SizedBox(width: 20.0),
                      // Wrapped with Obx to observe changes to the storeStatus
                      // variable when called using the StoreController.
                      Obx(
                        () => Flexible(
                          child: Text(
                            controller.storeStatus.value ? 'Open' : 'Closed',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: controller.storeStatus.value
                                    ? Colors.green.shade700
                                    : Colors.red,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          fit: FlexFit.tight,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              AddFollowerCount(),
            StoreStatus(),
            UpdateStoreName(),
            ],
          ),
        ),
      ),
    );
  }
}

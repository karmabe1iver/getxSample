import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx2/binding/storebinding.dart';
import 'package:getx2/view/storeview.dart';
import 'package:getx2/view/themecontoller.dart';
import 'package:getx2/widgets/addfollower.dart';
import 'package:getx2/widgets/storestatus.dart';
import 'package:getx2/widgets/updatestorename.dart';

void main() {
  runApp( MyApp()
  );
}
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
   final themeContoller =Get.put(ThemeContoller());
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx',
      initialBinding: StoreBinding(),
      theme: ThemeData.light(),
      darkTheme:ThemeData.dark(),
     // initialRoute: 'Home',
      home: Home(),
      themeMode: themeContoller.theme,
    );
  }
}


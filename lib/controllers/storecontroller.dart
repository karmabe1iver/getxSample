import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreController extends GetxController{

  final storename= 'superStore'.obs;
  final follwerCount=0.obs;
  final storeStatus= true.obs;
  final followeList=[].obs;
 // final reviews=<StoreReviews>[].obs;
  final storeNameEditingController= TextEditingController();
  final reviewEditingController= TextEditingController();
  final followerController=TextEditingController();
  final reviewNameController= TextEditingController();

  updateStoreName(String name){
    storename(name);
  }
  updateFollowerCount(){
    follwerCount(follwerCount.value+1);
  }
  void StoreStatusOpen(bool isOpen){
    storeStatus(isOpen);
  }

}
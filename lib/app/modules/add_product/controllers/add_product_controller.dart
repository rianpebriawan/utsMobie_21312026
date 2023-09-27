import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddProductController extends GetxController {
  late TextEditingController cNPM;
  late TextEditingController cNama;
  late TextEditingController cProdi;
  late TextEditingController cFakultas;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void addProduct(String nama, String harga)async{
    CollectionReference products = firestore.collection("products");

    try {
      await products.add({
        "npm_21312026":cNPM,
        "nama_21312026":nama,
        "prodi_21312026":cProdi,

    });
    Get.defaultDialog(
      title: "Berhasil",
      middleText: "Berhasil Menyimpan Data P",
      onConfirm: (){
        cNPM.clear();
        cNama.clear();
        cProdi.clear();
        cFakultas.clear();
        Get.back();
        textConfirm:
        "OK";
      }
    );
    } catch (e) {
      
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    cNPM = TextEditingController();
    cNama = TextEditingController();
    cProdi = TextEditingController();
    cFakultas = TextEditingController();
    super.onInit();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    cNPM.dispose();
    cNama.dispose();
    cProdi.dispose();
    cFakultas.dispose();
    super.onClose();
  }
}

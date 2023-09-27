import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateProductController extends GetxController {
  late TextEditingController cNPM;
  late TextEditingController cNama;
  late TextEditingController cProdi;
  late TextEditingController cFakultas;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<DocumentSnapshot<Object?>> getData(String id) async {
    DocumentReference docRef = firestore.collection("products").doc(id);

    return docRef.get();
  }

  void updateProduct(String npm_21312026, String nama_21312026, String prodi_21312026, String fakultas, String id) async {}

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
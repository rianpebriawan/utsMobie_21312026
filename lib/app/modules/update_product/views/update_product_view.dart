import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/update_product_controller.dart';

class UpdateProductView extends GetView<UpdateProductController> {
  const UpdateProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UpdateProductView'),
        centerTitle: true,
      ),
      body: FutureBuilder<DocumentSnapshot<Object?>>(
        future: controller.getData(Get.arguments),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            var data = snapshot.data!.data() as Map<String, dynamic>;
            controller.cNPM.text = data['npm_21312026'].toString();
            controller.cNama.text = data['nama_21312026'];
            controller.cProdi.text = data['prodi_21312026'];
            controller.cFakultas.text = data['fakultas'];
            return Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  TextField(
                    controller: controller.cNPM,
                    autocorrect: false,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(labelText: "NPM"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: controller.cNama,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: "NAMA"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                   SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: controller.cProdi,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: "Prodi"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                   SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: controller.cFakultas,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: "FAKULTAS"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () => controller.updateProduct(
                      controller.cNPM.text,
                      controller.cNama.text,
                      controller.cProdi.text,
                      controller.cFakultas.text,
                      Get.arguments,
                    ),
                    child: Text("Simpan"),
                  ),
                ],
              ),
            );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
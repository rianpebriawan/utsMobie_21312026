import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  const AddProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Product'),
        centerTitle: true,
      ),
      body: Padding(
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
              controller: controller.cNama,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "PRODI"),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.cNama,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "FAKULTAS"),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () => controller.addProduct(
                controller.cNPM.text,
                controller.cNama.text,
              ),
              child: Text("Simpan"),
            ),
          ],
        ),
      ),
    );
  }
}
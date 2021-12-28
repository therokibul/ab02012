import 'package:ab02012/controller/sum_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Second extends StatelessWidget {
  Second({Key? key}) : super(key: key);
  final SumController sumController = Get.put(SumController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Obx(() {
                return Text(
                    'Count No.#1 :     ${Get.find<SumController>().count1}');
              }),
              Obx(() {
                return Text(
                    'Count No.#2 :     ${Get.find<SumController>().count2}');
              }),
              Obx(() {
                return Text('Sum :     ${Get.find<SumController>().sum}');
              }),
              ElevatedButton(
                  onPressed: () {
                    sumController.increment1();
                  },
                  child: Text('Increment 1')),
              ElevatedButton(
                  onPressed: () {
                    sumController.increment2();
                  },
                  child: Text('Increment 2')),
            ],
          ),
        ),
      ),
    );
  }
}

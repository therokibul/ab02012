import 'package:ab02012/controller/user_controller.dart';
import 'package:ab02012/pages/second.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ab02012/controller/counter_controler.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              GetBuilder<CounterController>(
                  init: CounterController(),
                  builder: (cnxt) {
                    return Text(
                      '${cnxt.count}',
                      textScaleFactor: 3,
                    );
                  }),
              GetX<UserController>(
                  init: UserController(),
                  builder: (cnxt) {
                    return Text('Name:  ${cnxt.user.value.name}',textScaleFactor: 2,);
                  }),
              Obx(() {
                return Text(
                    'Stored Count: ${Get.find<UserController>().user.value.count}',textScaleFactor: 2,);
              }),
              ElevatedButton(
                  onPressed: () {
                    Get.find<CounterController>().reset();
                  },
                  child: Text('rest')),
              ElevatedButton(onPressed: () {
                Get.find<UserController>().updateUser(Get.find<CounterController>().count);
              }, child: Text('Update')),

              ElevatedButton(onPressed: (){
                Get.to(()=>Second());
              }, child: Text(' Go To Second Page')),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<CounterController>().increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

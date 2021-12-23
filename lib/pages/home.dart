import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ab02012/controller/counter_controler.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                ElevatedButton(onPressed: (){
                  Get.find<CounterController>().reset();
                }, child: Text('rest'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.find<CounterController>().increment();
      },
      child: Icon(Icons.add),
      
      ),
    );
  }
}

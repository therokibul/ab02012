import 'package:get/get.dart';
import 'package:ab02012/model/user_model.dart';

class UserController extends GetxController{
  final user = User().obs;
  updateUser(int count){
    user.update((val) {
      val!.name = 'Rokibul';
      val.count = count;
    });
  }
}
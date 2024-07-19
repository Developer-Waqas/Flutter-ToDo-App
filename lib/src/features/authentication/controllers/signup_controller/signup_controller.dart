import 'package:get/get.dart';
import 'package:todo_app/src/features/authentication/screens/home_screen/home_screen.dart';

class SignUpController extends GetxController {

  singUpButton(){
    Get.to(HomeScreen());
  }



}
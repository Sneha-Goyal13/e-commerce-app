import 'package:e_app/features/authenitication/screens/login/login.dart';
import 'package:e_app/features/authenitication/screens/onboarding/onboarding.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController{

  static AuthenticationRepository get instance => Get.find();

  ///local storage variables
 final deviceStorage =GetStorage();

 ///called from main.dart on app launch
  @override
  void onReady(){
    FlutterNativeSplash.remove();
    screenRedirect();
  }


  ///function to show relevant screen
 screenRedirect() async{
     //local storage
   ///storage works in key-value pair lile json files
   ///key always in string , value will be dynamic
   deviceStorage.writeIfNull('IsFirstTime', true);    ///first time of user
   deviceStorage.read('IsFirstTime')!=true ? Get.offAll(()=>const LoginScreen()) : Get.offAll(()=> const OnboardingScreen())  ;   ///not first time


 }
}
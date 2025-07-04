import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app.dart';
import 'firebase_options.dart';


//  Entry pint of App
Future<void> main() async {

  // Add Widgets Binding
  final WidgetsBinding widgetsBinding =WidgetsFlutterBinding.ensureInitialized();

  //init local storage => Get local storage
  await GetStorage.init();

  //await native splash
FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding)

  ///initialize firebase and authentication repository
  await Firebase.initializeApp( ///current platform eg-web,android ,ios
    options: DefaultFirebaseOptions.currentPlatform).then(///whenever the firebase initialization is ready we are going to check or own firebase authentication if user is logged in or not
    ///maybe user has created his account,if email not verified redirect the user,  => all this is performed before authentication
      (FirebaseApp value) => Get.put(AuthenticationRepository())///authentication repository will decide the screen
  );///we will trigger on init function  which will check the current state od user
  ///and redirect user screen
  ///we will add loaders


// load all the material design/themes/localizations/bindings
  runApp(const App());
} 



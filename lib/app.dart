import 'package:e_app/utils/constants/color.dart';
import 'package:e_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:e_app/features/authenitication/screens/onboarding/onboarding.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';



// use this class to setup themes,initial bindings,any animations and much

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      themeMode:ThemeMode.system ,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const Scaffold(
        backgroundColor: TColors.primaryColor,
        body: Center(child: CircularProgressIndicator(color: Colors.white,),),
      ),
    );
  }
}



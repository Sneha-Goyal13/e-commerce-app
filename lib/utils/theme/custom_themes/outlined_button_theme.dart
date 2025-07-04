import 'package:flutter/material.dart';

class TOutlinedButtonTheme{
  TOutlinedButtonTheme._();

static final lightOutlinedButtonTheme =OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor:Colors.black,
        side: const BorderSide(color: Color(0xFF677DC9)),
        padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
        textStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Colors.black
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
    )

);

  static final darkOutlinedButtonTheme =OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor:Colors.white,
          side: const BorderSide(color: Colors.blueAccent),
          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
          textStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Colors.white
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
      )

  );

}
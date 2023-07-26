// ignore_for_file: camel_case_types

import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/my_controller.dart';
import '../media/qury.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {

  MyAppController myAppController = Get.put(MyAppController());


  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);
    return Scaffold(
      backgroundColor: const Color(0xffFFFCFB),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
                image: const AssetImage('asset/image/Logo/Logo1.png'),
                height: ScreenSize.horizontalBlockSize! * 55),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'AADHAR',
                  style: GoogleFonts.k2d(
                      color: const Color(0xff13316D),
                      fontWeight: FontWeight.w800,
                      fontSize: ScreenSize.horizontalBlockSize! * 8.5,
                      shadows: [
                        const Shadow(
                            offset: Offset(0, 3),
                            color: Colors.black12,
                            blurRadius: 5)
                      ]),
                ),
                TextSpan(
                  text: ' Loan',
                  style: GoogleFonts.k2d(
                      color: const Color(0xff000000),
                      fontSize: ScreenSize.horizontalBlockSize! * 8.5,
                      fontWeight: FontWeight.w800,
                      shadows: [
                        const Shadow(
                            offset: Offset(0, 3),
                            color: Colors.black12,
                            blurRadius: 5)
                      ]),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

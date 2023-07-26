// ignore_for_file: sized_box_for_whitespace

import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/ad_controller/google_ads.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:adhar_loan_2/media/qury.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyAadharCardNumber extends StatefulWidget {
  const VerifyAadharCardNumber({super.key});

  @override
  State<VerifyAadharCardNumber> createState() => _VerifyAadharCardNumberState();
}

class _VerifyAadharCardNumberState extends State<VerifyAadharCardNumber> {
  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>  backbuttoncontroller.showBackbuttonad(
          context, '/VerifyAadharCardNumber', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('Detail', () {
          backbuttoncontroller.showBackbuttonad(
              context, '/VerifyAadharCardNumber', '');
        }),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient:
                  LinearGradient(colors: [Color(0xffBEDFF3), Color(0xffCFDAF8)])),
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    controllerlinkcopy.getText("https://unifiedportal.epfindia.gov.in/"),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: controllerwhitelist.get(Column(
                        children: [
                          SizedBox(height: ScreenSize.fSize_15()),
                          Padding(
                              padding: const EdgeInsets.all(15),
                              child: Container(
                                width: ScreenSize.horizontalBlockSize! * 76,
                                child: Text(
                                  """${abc[1]}""",
                                  style: GoogleFonts.k2d(
                                      color: Colors.black,
                                      fontSize: ScreenSize.fSize_13(),
                                      fontWeight: FontWeight.w500),
                                ),
                              ))
                        ],
                      )),
                    )
                  ],
                ),
              ),
              banner.getBN('/VerifyAadharCardNumber')
            ],
          ),
        ),
      ),
    );
  }
}

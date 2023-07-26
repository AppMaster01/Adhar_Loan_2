// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:adhar_loan_2/media/qury.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../ad_controller/google_ads.dart';

class PanCardDeatils extends StatefulWidget {
  const PanCardDeatils({super.key});

  @override
  State<PanCardDeatils> createState() => _PanCardDeatilsState();
}

class _PanCardDeatilsState extends State<PanCardDeatils> {
  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/PanCardDeatils', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('Pan Card', () {
          backbuttoncontroller.showBackbuttonad(context, '/PanCardDeatils', '');
        }),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffBEDFF3), Color(0xffCFDAF8)])),
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      width: double.infinity,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: ScreenSize.fSize_30()),
                          Container(
                            width: ScreenSize.horizontalBlockSize! * 85,
                            child: Text(
                              '${abc[0]}',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.k2d(
                                  color: Colors.blue,
                                  fontSize: ScreenSize.fSize_17(),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(15),
                              child: controllerText.getText('${abc[1]}',
                                  ScreenSize.fSize_14(), FontWeight.w700)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenSize.fSize_80()),
                ]),
              ),
              banner.getBN('/PanCardDeatils')
            ],
          ),
        ),
      ),
    );
  }
}

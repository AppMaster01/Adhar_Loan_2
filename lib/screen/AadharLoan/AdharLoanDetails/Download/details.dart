// ignore_for_file: sized_box_for_whitespace

import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/ad_controller/google_ads.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:adhar_loan_2/media/qury.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DownloadDetails extends StatefulWidget {
  const DownloadDetails({super.key});

  @override
  State<DownloadDetails> createState() => _DownloadDetailsState();
}

class _DownloadDetailsState extends State<DownloadDetails> {
  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>backbuttoncontroller.showBackbuttonad(context, '/DownloadDetails', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('${abc[2]}', () {
          backbuttoncontroller.showBackbuttonad(context, '/DownloadDetails', '');
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
                    controllerlinkcopy.getText("${abc[0]}"),
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
                                      fontWeight: FontWeight.w600),
                                ),
                              ))
                        ],
                      )),
                    )
                  ],
                ),
              ),
              banner.getBN('/DownloadDetails')
            ],
          ),
        ),
      ),
    );
  }
}

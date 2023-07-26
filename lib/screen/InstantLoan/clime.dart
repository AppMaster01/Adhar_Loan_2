// ignore_for_file: avoid_unnecessary_containers, camel_case_types

import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../media/qury.dart';

class clime extends StatelessWidget {
  const clime({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>  backbuttoncontroller.showBackbuttonad(context, '/clime', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('Apply', (){
          backbuttoncontroller.showBackbuttonad(context, '/clime', '');
        }),
        body:  Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient:
              LinearGradient(colors: [Color(0xffBEDFF3), Color(0xffCFDAF8)])),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  copy.getcopy('"https://www.bajajfinserv.in/instant-personal-loan-on-aadhar-card"');
                },
                child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: controllerwhitelist.get(Column(
                      children: [
                        SizedBox(height: ScreenSize.fSize_18()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Image(
                                  image: const AssetImage(
                                      'asset/image/Icon/Link Pan Aadhar Icon.png'),
                                  height: ScreenSize.horizontalBlockSize! * 5),
                            ),
                            SizedBox(width: ScreenSize.fSize_12()),
                            Text(
                              'Copy Link',
                              style: GoogleFonts.k2d(
                                  color: const Color(0xff152C70),
                                  fontSize: ScreenSize.fSize_15(),
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                        SizedBox(height: ScreenSize.fSize_18()),
                      ],
                    ))),
              ),
              Padding(
                  padding: const EdgeInsets.all(15),
                  child: controllerwhitelist.get(Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        child: Text(
                          """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. """,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.k2d(
                              color: Colors.black,
                              fontSize: ScreenSize.fSize_12(),
                              fontWeight: FontWeight.w600),
                        ),
                      )))),
            ],
          ),
        ),
      ),
    );

  }
}

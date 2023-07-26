// ignore_for_file: camel_case_types

import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../ad_controller/google_ads.dart';
import '../../../../media/qury.dart';

class Retrieve_Lost_or_Forgotten extends StatefulWidget {
  const Retrieve_Lost_or_Forgotten({super.key});

  @override
  State<Retrieve_Lost_or_Forgotten> createState() =>
      _Retrieve_Lost_or_ForgottenState();
}

class _Retrieve_Lost_or_ForgottenState
    extends State<Retrieve_Lost_or_Forgotten> {
  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>backbuttoncontroller.showBackbuttonad(
          context, '/Retrieve_Lost_or_Forgotten', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar("${abc[0]}", () {
          backbuttoncontroller.showBackbuttonad(
              context, '/Retrieve_Lost_or_Forgotten', '');
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
                    controllerlinkcopy.getText(
                        "https://www.bajajfinserv.in/instant-personal-loan-on-aadhar-card"),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: controllerwhitelist.get(Column(
                        children: [
                          SizedBox(height: ScreenSize.fSize_15()),
                          controllerdiscripText
                              .getText("""${abc[1]}""", FontWeight.w500)
                        ],
                      )),
                    ),
                    SizedBox(height: ScreenSize.fSize_80())
                  ],
                ),
              ),
              banner.getBN('/Retrieve_Lost_or_Forgotten')
            ],
          ),
        ),
      ),
    );
  }
}

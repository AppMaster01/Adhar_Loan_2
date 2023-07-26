// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/ad_controller/google_ads.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:adhar_loan_2/media/qury.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AadharLoanGuideDetail extends StatefulWidget {
  const AadharLoanGuideDetail({super.key});

  @override
  State<AadharLoanGuideDetail> createState() => _AadharLoanGuideDetailState();
}

class _AadharLoanGuideDetailState extends State<AadharLoanGuideDetail> {
  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/AadharLoanGuideDetail', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('Detail', () {
          backbuttoncontroller.showBackbuttonad(
              context, '/AadharLoanGuideDetail', '');
        }),
        body: Container(
            height: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffBEDFF3), Color(0xffCFDAF8)])),
            child: Stack(
              children: [
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: controllerwhitelist.get(Column(
                          children: [
                            SizedBox(height: ScreenSize.fSize_20()),
                            controllerdiscrip.getText("""${abc}"""),
                            SizedBox(height: ScreenSize.fSize_20()),

                          ],
                        )),
                      ),
                      SizedBox(height: ScreenSize.fSize_80())
                    ],
                  ),
                ),
                banner.getBN('/AadharLoanGuideDetail')
              ],
            )),
      ),
    );
  }
}

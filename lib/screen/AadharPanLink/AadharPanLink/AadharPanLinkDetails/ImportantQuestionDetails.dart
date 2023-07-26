// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/ad_controller/google_ads.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:adhar_loan_2/media/qury.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImportantQuestionDetails extends StatefulWidget {
  const ImportantQuestionDetails({super.key});

  @override
  State<ImportantQuestionDetails> createState() =>
      _ImportantQuestionDetailsState();
}

class _ImportantQuestionDetailsState extends State<ImportantQuestionDetails> {
  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>backbuttoncontroller.showBackbuttonad(
          context, '/UpdateAadharDetails', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('ANSWER', () {
          backbuttoncontroller.showBackbuttonad(
              context, '/UpdateAadharDetails', '');
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
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: controllerwhitelist.get(Column(
                        children: [
                          SizedBox(height: ScreenSize.fSize_15()),
                          controllerdiscripText
                              .getText("""${abc}""", FontWeight.w500)
                        ],
                      )),
                    )
                  ],
                ),
              ),
              banner.getBN('/DownloadEAadhar')
            ],
          ),
        ),
      ),
    );
  }
}

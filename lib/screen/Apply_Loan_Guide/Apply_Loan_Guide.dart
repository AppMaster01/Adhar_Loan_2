import 'package:adhar_loan_2/ad_controller/google_ads.dart';
import 'package:adhar_loan_2/ad_controller/main_ad_controller.dart';
import 'package:flutter/material.dart';

import '../../ad_controller/back_ad_controller.dart';
import '../../controller/widget_controller.dart';
import '../../media/qury.dart';

class ApplyLoanGuide extends StatefulWidget {
  const ApplyLoanGuide({super.key});

  @override
  State<ApplyLoanGuide> createState() => _ApplyLoanGuideState();
}

class _ApplyLoanGuideState extends State<ApplyLoanGuide> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>backbuttoncontroller.showBackbuttonad(context, '/ApplyLoanGuide', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('Loan Guide', () {
          backbuttoncontroller.showBackbuttonad(context, '/ApplyLoanGuide', '');
        }),
        body: Container(
          decoration: const BoxDecoration(
              gradient:
                  LinearGradient(colors: [Color(0xffBEDFF3), Color(0xffCFDAF8)])),
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    controllerblue.getcontainer(() {
                      controller.showbuttonad(
                          context, '/PanCard', '/ApplyLoanGuide', '');
                    }, ScreenSize.horizontalBlockSize! * 15, 'Pan Card'),
                    controllerblue.getcontainer(() {
                      controller.showbuttonad(
                          context, '/AadharCard', '/ApplyLoanGuide', '');
                    }, ScreenSize.horizontalBlockSize! * 15, 'Aadhar Card'),
                    native.getNT(context, '/ApplyLoanGuide', 'listTileMedium'),
                    native.getNT(context, '/ApplyLoanGuide', 'listTile'),
                    SizedBox(height: ScreenSize.fSize_80(),)
                  ],
                ),
              ),
              banner.getBN('/ApplyLoanGuide')
            ],
          ),
        ),
      ),
    );
  }
}

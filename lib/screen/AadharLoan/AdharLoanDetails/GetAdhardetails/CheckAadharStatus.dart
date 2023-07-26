import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:flutter/material.dart';

import '../../../../ad_controller/google_ads.dart';

class CheckAadharStatus extends StatefulWidget {
  const CheckAadharStatus({super.key});

  @override
  State<CheckAadharStatus> createState() => _CheckAadharStatusState();
}

class _CheckAadharStatusState extends State<CheckAadharStatus> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(context, '/CheckAadharStatus', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('Check Aadhar Status', (){
          backbuttoncontroller.showBackbuttonad(context, '/CheckAadharStatus', '');
        }),
        body:  Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient:
              LinearGradient(colors: [Color(0xffBEDFF3), Color(0xffCFDAF8)])),
          child: Stack(
            children: [
              SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(children: [controllerlink.getText()])),
              banner.getBN('/CheckAadharStatus')
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/ad_controller/google_ads.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:flutter/material.dart';

import '../../../../media/qury.dart';

class DownloadEAadhar extends StatefulWidget {
  const DownloadEAadhar({super.key});

  @override
  State<DownloadEAadhar> createState() => _DownloadEAadharState();
}

class _DownloadEAadharState extends State<DownloadEAadhar> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>backbuttoncontroller.showBackbuttonad(
          context, '/DownloadEAadhar', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('Download EAadhar', () {
          backbuttoncontroller.showBackbuttonad(
              context, '/DownloadEAadhar', '');
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
                    controllerlinkcopy.getText("https://www.bajajfinserv.in/instant-personal-loan-on-aadhar-card"),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: controllerwhitelist.get(Column(
                        children: [
                          SizedBox(height: ScreenSize.fSize_15()),
                          controllerpoint.getcontainer("Download Aadhaar"),
                          // SizedBox(height: ScreenSize.fSize_15()),

                          controllerdiscripText.getText(
                              """Download an electronic version of your Aadhaar by giving your Aadhar number or Enrolment ID. Downloaded Aadhaar is as valid as the original Aadhaar letter.""",
                              FontWeight.w500)
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

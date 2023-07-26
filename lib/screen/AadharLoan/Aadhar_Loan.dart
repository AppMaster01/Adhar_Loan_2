import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/ad_controller/google_ads.dart';
import 'package:adhar_loan_2/ad_controller/main_ad_controller.dart';
import 'package:adhar_loan_2/media/qury.dart';
import 'package:flutter/material.dart';

import '../../controller/widget_controller.dart';

class AadharLoan extends StatefulWidget {
  const AadharLoan({super.key});

  @override
  State<AadharLoan> createState() => _AadharLoanState();
}

class _AadharLoanState extends State<AadharLoan> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(context, '/AadharLoan', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('AadharLoan', () {
          backbuttoncontroller.showBackbuttonad(context, '/AadharLoan', '');
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
                    native.getNT(context, '/AadharLoan', 'listTileMedium'),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: color.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {
                              controller.showbuttonad(
                                  context, '/${page[index]}', '/AadharLoan', '');
                            },
                            child: controllerwhitecontainr2.get(color[index],
                                color[index], image[index], text[index]));
                      },
                    ),
                    SizedBox(height: ScreenSize.fSize_100()),
                  ],
                ),
              ),
              banner.getBN('/AadharLoan')
            ],
          ),
        ),
      ),
    );
  }

  List page = [
    "GetAadhar",
    "UpdateAadhar",
    "AadharService",
    "AboutAadhar",
    "Download"
  ];
  List color = [
    const Color(0xFFE8EBFC),
    const Color(0xFFCCF2E3),
    const Color(0xFFF5E5FF),
    const Color(0xFFFFD7D5),
    const Color(0xFFFEEBDA)
  ];
  List image = [
    "asset/image/Icon/Aadhar Loan/Get Aadhar.png",
    "asset/image/Icon/Aadhar Loan/Update Aadhar.png",
    "asset/image/Icon/Aadhar Loan/Aadhar Service.png",
    "asset/image/Icon/Aadhar Loan/About Aadhar.png",
    "asset/image/Icon/Aadhar Loan/Download.png"
  ];
  List text = [
    'Get Aadhar',
    'Update Aadhar',
    'Aadhar Service',
    'About Aadhar',
    'Download'
  ];
}

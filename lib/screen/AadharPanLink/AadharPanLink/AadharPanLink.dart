import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:flutter/material.dart';

import '../../../ad_controller/google_ads.dart';
import '../../../ad_controller/main_ad_controller.dart';
import '../../../controller/widget_controller.dart';
import '../../../media/qury.dart';

class AadharPanLink extends StatefulWidget {
  const AadharPanLink({super.key});

  @override
  State<AadharPanLink> createState() => _AadharPanLinkState();
}

class _AadharPanLinkState extends State<AadharPanLink> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>  backbuttoncontroller.showBackbuttonad(context, '/AadharPanLink', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('Aadhar Pan Link ', () {
          backbuttoncontroller.showBackbuttonad(context, '/AadharPanLink', '');
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
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: color.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: () {
                                controller.showbuttonad(
                                    context,
                                    '/${page[index]}',
                                    '/AadharPanLink',
                                    text[index]);
                              },
                              child: controllerwhitecontainr2.get(color[index],
                                  color[index], image[index], text[index]));
                        },
                      ),
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
    "AadharPanLinkDetails",
    "AadharPanLinkDetails",
    "LinkPanToAadhar",
    "ImportantQuestion",
  ];
  List color = [
    const Color(0xFFE2FBDB),
    const Color(0xFFFFD7D5),
    const Color(0xFFF5E5FF),
    const Color(0xFFFEEBDA),
  ];
  List image = [
    "asset/image/Icon/Aadhar Pan Link/Aadhar Pan Info.png",
    "asset/image/Icon/Aadhar Pan Link/Why Link Requires.png",
    "asset/image/Icon/Aadhar Pan Link/Link pan to aadhar.png",
    "asset/image/Icon/Aadhar Pan Link/Important Question.png",
  ];
  List text = [
    'Aadhar Pan Info',
    'Why Link Requires?',
    'Link Pan to Aadhar',
    'Important Question',
  ];
}

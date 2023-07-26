// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers

import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/ad_controller/google_ads.dart';
import 'package:adhar_loan_2/ad_controller/main_ad_controller.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:flutter/material.dart';
import '../../media/qury.dart';

class InstantLoan extends StatefulWidget {
  const InstantLoan({super.key});

  @override
  State<InstantLoan> createState() => _InstantLoanState();
}

class _InstantLoanState extends State<InstantLoan> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>  backbuttoncontroller.showBackbuttonad(context, '/InstantLoan', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('Instant Loan', () {
          backbuttoncontroller.showBackbuttonad(context, '/InstantLoan', '');
        }),
        body: Container(
          height: double.infinity,
          width: double.infinity,
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
                      padding: const EdgeInsets.all(10),
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: image.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.8),
                        itemBuilder: (BuildContext context, int index) {
                          final Name = text[index].toString().split(" ");
                          return controllerwhitecontainr.get(() {
                            controller.showbuttonad(
                                context, '/Details', '/InstantLoan', text[index]);
                          },
                              ScreenSize.fSize_130(),
                              ScreenSize.fSize_100(),
                              Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    controllerminiimage.getText(
                                        color[index], color[index], image[index]),
                                    Container(
                                      child: Center(
                                        child: controllerText.getText(
                                            '${Name[0]}\n${Name[1]}',
                                            ScreenSize.horizontalBlockSize! * 4.2,
                                            FontWeight.w700),
                                      ),
                                    ),
                                  ]));
                        },
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_50()),
                  ],
                ),
              ),
              banner.getBN('/InstantLoan')
            ],
          ),
        ),
      ),
    );
  }
}

List image = [
  "asset/image/Icon/Instant Loan/Active UNA.png",
  "asset/image/Icon/Instant Loan/Balance Online.png",
  "asset/image/Icon/Instant Loan/Pensioners.png",
  "asset/image/Icon/Instant Loan/TRRN Status.png",
  "asset/image/Icon/Instant Loan/Claim.png",
  "asset/image/Icon/Instant Loan/Balance Call.png",
  "asset/image/Icon/Instant Loan/Balance SMS.png",
  "asset/image/Icon/Instant Loan/FAQs.png",
  "asset/image/Icon/Instant Loan/News.png",
  "asset/image/Icon/Instant Loan/Helpline.png",
  "asset/image/Icon/Instant Loan/Locate Office.png"
];
List color = [
  const Color(0xFFCCF2E3),
  const Color(0xFFFEEBDA),
  const Color(0xFFE8EBFC),
  const Color(0xFFFFEEFF),
  const Color(0xFFE2FBDB),
  const Color(0xFFF5E5FF),
  const Color(0xFFFDF1C9),
  const Color(0xFFFFD7D5),
  const Color(0xFFCCF2E3),
  const Color(0xFFE8EBFC),
  const Color(0xFFF5E5FF),
];
List text = [
  """Active UNA""",
  """Balance Online""",
  """Pensioners """,
  """TRRN Status""",
  """Claim """,
  """Balance Call""",
  """Balance SMS""",
  """FAQs """,
  """News """,
  """Helpline """,
  """Locate Office""",
];

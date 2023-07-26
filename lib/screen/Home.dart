// ignore_for_file: sized_box_for_whitespace

import 'dart:io';

import 'package:adhar_loan_2/ad_controller/google_ads.dart';
import 'package:adhar_loan_2/ad_controller/main_ad_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/widget_controller.dart';
import '../media/qury.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:async';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<bool> _onWillPop(BuildContext context) async {
    bool? exitResult = await showDialog(
      context: context,
      builder: (context) => _buildExitDialog(context),
    );
    return exitResult ?? false;
  }

  Scaffold _buildExitDialog(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: ScreenSize.horizontalBlockSize! * 85,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                  border: Border.all(color: const Color(0xffE2E6EA))),
              child: Column(children: [
                SizedBox(height: ScreenSize.fSize_34()),
                Center(
                    child: Image(
                  image: const AssetImage('asset/image/Icon/exit (1) 1.png'),
                  height: ScreenSize.horizontalBlockSize! * 20,
                )),
                SizedBox(height: ScreenSize.fSize_34()),
                Container(
                  width: ScreenSize.horizontalBlockSize! * 70,
                  child: Text(
                    'Are you sure you want to Quit?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.k2d(
                        color: Colors.black,
                        fontSize: ScreenSize.fSize_25(),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: ScreenSize.fSize_34()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    controllerEXIT.getEXIT(() => SystemNavigator.pop(),
                        const Color(0xffCFDAF8), 'Yes', Colors.black),
                    controllerEXIT.getEXIT(
                        () => Navigator.of(context).pop(false),
                        const Color(0xff13316D),
                        "No",
                        Colors.white),
                  ],
                ),
                SizedBox(height: ScreenSize.fSize_10())
              ]),
            ),
          ],
        ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    abc = Get.arguments;
  }

  var abc;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
    WillPopScope(
          onWillPop: () => _onWillPop(context),
          child: Scaffold(
            drawer: Drawer(
                backgroundColor: Colors.white,
                child: controllerdrawer.getelevated(
                  context,
                )),
            appBar: AppBar(
                elevation: 0,
                centerTitle: true,
                leading: Builder(builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Center(
                        child: Image(
                      image: const AssetImage('asset/image/Icon/menu.png'),
                      width: ScreenSize.fSize_25(),
                    )),
                  );
                }),
                title: Text(
                  "Aadhar Loan",
                  style: GoogleFonts.k2d(
                      color: Colors.black,
                      fontSize: ScreenSize.fSize_25(),
                      fontWeight: FontWeight.w700),
                ),
                flexibleSpace: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffBEDFF3), Color(0xffCFDAF8)])),
                )),
            body: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xffBEDFF3), Color(0xffCFDAF8)])),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Obx(
                      () => Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: ScreenSize.horizontalBlockSize! * 45,
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(colors: [
                                    Color(0xff5272E4),
                                    Color(0xff1A4378),
                                    Color(0xff2F1741)
                                  ]),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    controllerTextwhite.getText(
                                        'Maximum Loan Amount',
                                        ScreenSize.horizontalBlockSize! * 5.7,
                                        FontWeight.w400),
                                    controllerTextwhite.getText(
                                        'RS. 5,00,000',
                                        ScreenSize.horizontalBlockSize! * 7,
                                        FontWeight.w700),
                                    controllerTextwhite.getText(
                                        'Money, when you need it.',
                                        ScreenSize.horizontalBlockSize! * 5.7,
                                        FontWeight.w400),
                                    controllercontainerwhite.getcontainer(() {
                                      controller.showbuttonad(
                                          context, '/LoanType', '/Home', '');
                                    }, 'Apply Now'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          controllerblue.getcontainer(() {
                            controller.showbuttonad(
                                context, '/ApplyLoanGuide', '/Home', '');
                          }, ScreenSize.horizontalBlockSize! * 16,
                              'Apply Loan Guide'),
                          SizedBox(height: ScreenSize.fSize_10()),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              controllercontainermini.getcontainer(() {
                                controller.showbuttonad(
                                    context, '/AadharLoanGuide', '/Home', '');
                              },
                                  ScreenSize.fSize_160(),
                                  ScreenSize.fSize_120(),
                                  const Color(0xFFFFD7D5),
                                  const Color(0xFFFFD7D5),
                                  "asset/image/Icon/Aadhar Loan Guide.png",
                                  'Aadhar Loan Guide',
                                  ScreenSize.fSize_18()),
                              controllercontainermini.getcontainer(() {
                                controller.showbuttonad(
                                    context, '/LoanType', '/Home', '');
                              },
                                  ScreenSize.fSize_160(),
                                  ScreenSize.fSize_120(),
                                  const Color(0xFFFDF1C9),
                                  const Color(0xFFFDF1C9),
                                  "asset/image/Icon/Types of Loan.png",
                                  "Types of Aadhar Loan",
                                  ScreenSize.fSize_18())
                            ],
                          ),
                          SizedBox(height: ScreenSize.fSize_10()),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: controllerwhitecontainr.get(
                                () {
                                  controller.showbuttonad(
                                      context, '/InstantLoan', '/Home', '');
                                },
                                double.infinity,
                                ScreenSize.fSize_70(),
                                Row(
                                  children: [
                                    SizedBox(width: ScreenSize.fSize_20()),
                                    controllerminiimage.getText(
                                        const Color(0xFFF5E5FF),
                                        const Color(0xFFF5E5FF),
                                        'asset/image/Icon/Instant Loan.png'),
                                    SizedBox(width: ScreenSize.fSize_30()),
                                    controllerText.getText('Instant Loan',
                                        ScreenSize.fSize_18(), FontWeight.w700)
                                  ],
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: text.value.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                      childAspectRatio: 0.8),
                              itemBuilder: (BuildContext context, int index) {
                                return controllerwhitecontainr.get(() {
                                  controller.showbuttonad(context,
                                      '/${page.value[index]}', '/Home', '');
                                },
                                    ScreenSize.fSize_130(),
                                    ScreenSize.fSize_100(),
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          controllerminiimage.getText(
                                              color.value[index],
                                              color.value[index],
                                              image.value[index]),
                                          Container(
                                            height: ScreenSize
                                                    .horizontalBlockSize! *
                                                14,
                                            width: ScreenSize.fSize_80(),
                                            child: Text(
                                              text.value[index],
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.k2d(
                                                  color: Colors.black,
                                                  fontSize: ScreenSize
                                                          .horizontalBlockSize! *
                                                      4.5,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          )
                                        ]));
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Text(
                                  'Loan Calculator',
                                  style: GoogleFonts.k2d(
                                      color: const Color(0xff152C70),
                                      fontWeight: FontWeight.w800,
                                      fontSize: ScreenSize.fSize_23()),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: text1.value.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                      childAspectRatio: 0.8),
                              itemBuilder: (BuildContext context, int index) {
                                return controllerwhitecontainr.get(() {
                                  controller.showbuttonad(
                                      context,
                                      '/${text1page.value[index]}',
                                      '/Home',
                                      '');
                                },
                                    ScreenSize.fSize_130(),
                                    ScreenSize.fSize_100(),
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          controllerminiimage.getText(
                                              color1.value[index],
                                              color1.value[index],
                                              image1.value[index]),
                                          Container(
                                            width: ScreenSize.fSize_90(),
                                            child: Text(
                                              text1.value[index],
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.k2d(
                                                  color: Colors.black,
                                                  fontSize: ScreenSize
                                                          .horizontalBlockSize! *
                                                      4.5,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          )
                                        ]));
                              },
                            ),
                          ),
                          SizedBox(height: ScreenSize.fSize_80()),
                        ],
                      ),
                    ),
                  ),
                  banner.getBN('/Home')
                ],
              ),
            ),
          ),
        ),

    );
  }

  var page = [
    'AadharLoan',
    'AadharAddressChange',
    'EpfService',
    'AadharPanLink',
    'BankInfo',
    'NearByMe',
  ].obs;
  var text = [
    "Aadhar Loan",
    "Address Change",
    "EPF Service",
    "Aadhar Pan Link",
    "Bank Info",
    "Near By Me",
  ].obs;
  var color = [
    const Color(0xFFCCF2E3),
    const Color(0xFFFEEBDA),
    const Color(0xFFE8EBFC),
    const Color(0xFFFFEEFF),
    const Color(0xFFE2FBDB),
    const Color(0xFFF5E5FF),
  ].obs;
  var image = [
    "asset/image/Icon/Aadhar Loan.png",
    'asset/image/Icon/Address Change.png',
    'asset/image/Icon/EPF Service.png',
    'asset/image/Icon/Aadhar Pan Link.png',
    'asset/image/Icon/Bank Info.png',
    'asset/image/Icon/Near By Me.png',
  ].obs;
  var text1 = [
    "EMI Calculator",
    "GST Calculator",
    "SIP Calculator",
  ].obs;
  var text1page = [
    "EmiCalculator",
    "GstCalculator",
    "SipCalculator",
  ].obs;
  var color1 = [
    const Color(0xFFF5E5FF),
    const Color(0xFFFFD7D5),
    const Color(0xFFCCF2E3),
  ].obs;
  var image1 = [
    "asset/image/Icon/EMI Calculator.png",
    'asset/image/Icon/GST Calculator.png',
    'asset/image/Icon/SIP Calculator.png',
  ].obs;
}


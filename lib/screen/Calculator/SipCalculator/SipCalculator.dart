// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps

import 'dart:math';

import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../ad_controller/google_ads.dart';
import '../../../media/qury.dart';
import '../../TypesOfLoan/ApplyLoanForm/ApplyLoanForm1.dart';

class SipCalculator extends StatefulWidget {
  const SipCalculator({super.key});

  @override
  State<SipCalculator> createState() => _SipCalculatorState();
}

class _SipCalculatorState extends State<SipCalculator> {
  final deposit = TextEditingController().obs;
  final Rate = TextEditingController().obs;
  var Year = 1.obs;
  var Month = 1.obs;
  var y = false.obs;
  var m = false.obs;
  var investment = 0.0.obs;
  var interest = 0.0.obs;
  var sip = 0.0.obs;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/SipCalculator', ''),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: controllerAppbar.getappbar('SIP Calculator', () {
          backbuttoncontroller.showBackbuttonad(context, '/SipCalculator', '');
        }),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffBEDFF3), Color(0xffCFDAF8)])),
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Obx(
                  () => Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          controllerfiled.gettextfiled(
                              double.infinity,
                              deposit.value,
                              "Regular Monthly Deposit",
                              TextInputType.number),
                          SizedBox(height: ScreenSize.fSize_12()),
                          controllerfiled.gettextfiled(
                              double.infinity,
                              Rate.value,
                              "Rate of Interest",
                              TextInputType.number),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: ScreenSize.fSize_13(),
                                  top: ScreenSize.fSize_15()),
                              child: controllerText.getText(
                                  "Period*",
                                  ScreenSize.horizontalBlockSize! * 4.8,
                                  FontWeight.w800)),
                          SizedBox(height: ScreenSize.fSize_13()),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              controlleryer.gettextfiled(() {
                                y.value = !y.value;
                              }, "${Year.value}  Year"),
                              controlleryer.gettextfiled(() {
                                m.value = !m.value;
                              }, "${Month.value}  Months"),
                            ],
                          ),
                          SizedBox(height: ScreenSize.fSize_25()),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  deposit.value.clear();
                                  Rate.value.clear();
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: ScreenSize.fSize_13()),
                                  child: Container(
                                    height:
                                        ScreenSize.horizontalBlockSize! * 13,
                                    width: ScreenSize.horizontalBlockSize! * 35,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFA4B2CE),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: Center(
                                      child: controllerText.getText(
                                          "Reset",
                                          ScreenSize.fSize_17(),
                                          FontWeight.w800),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  if (deposit.value.text.isEmpty ||
                                      Rate.value.text.isEmpty) {
                                    showToast();
                                  } else if (deposit.value.text.isNotEmpty ||
                                      Rate.value.text.isNotEmpty) {
                                    calculation();
                                  }
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: ScreenSize.fSize_13()),
                                  child: Container(
                                    height:
                                        ScreenSize.horizontalBlockSize! * 13,
                                    width: ScreenSize.horizontalBlockSize! * 53,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF13316D),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: Center(
                                        child: Text(
                                      "Calculate",
                                      style: GoogleFonts.k2d(
                                          color: Colors.white,
                                          fontSize: ScreenSize.fSize_17(),
                                          fontWeight: FontWeight.w800),
                                    )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 5),
                          controllercalclucontain.getText(Column(
                            children: [
                              SizedBox(
                                  height: ScreenSize.horizontalBlockSize! * 5),
                              Row(
                                children: [
                                  SizedBox(
                                      width: ScreenSize.horizontalBlockSize! *
                                          7.5),
                                  controllercaltext.getText("Investment Amount",
                                      "${investment.value.round()}"),
                                ],
                              ),
                              SizedBox(
                                  height: ScreenSize.horizontalBlockSize! * 2),
                              controllerdivider.getText(),
                              SizedBox(
                                  height: ScreenSize.horizontalBlockSize! * 2),
                              Row(
                                children: [
                                  SizedBox(
                                      width: ScreenSize.horizontalBlockSize! *
                                          7.5),
                                  controllercaltext.getText("Total Interest",
                                      "${interest.value.round()}"),
                                ],
                              ),
                              SizedBox(
                                  height: ScreenSize.horizontalBlockSize! * 2),
                              controllerdivider.getText(),
                              SizedBox(
                                  height: ScreenSize.horizontalBlockSize! * 2),
                              Row(
                                children: [
                                  SizedBox(
                                      width: ScreenSize.horizontalBlockSize! *
                                          7.5),
                                  controllercaltext.getText(
                                      "SIP Maturity Amount",
                                      "${sip.value.round()}"),
                                ],
                              ),
                              SizedBox(
                                  height: ScreenSize.horizontalBlockSize! * 5),
                            ],
                          )),
                          SizedBox(
                            height: ScreenSize.fSize_80(),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: ScreenSize.horizontalBlockSize! * 50),
                        child: Center(
                          child: Visibility(
                              visible: y.value,
                              child: Container(
                                width: ScreenSize.horizontalBlockSize! * 30,
                                height: ScreenSize.horizontalBlockSize! * 100,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.white,
                                ),
                                child: ListView.builder(
                                  physics: const ClampingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: 50,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        y.value = false;
                                        Year.value = index + 1;
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Center(
                                          child: Text(
                                            '${index + 1}  year',
                                            style: GoogleFonts.k2d(
                                                fontSize: ScreenSize.fSize_15(),
                                                color: const Color(0xff13316D),
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: ScreenSize.horizontalBlockSize! * 52),
                        child: Center(
                          child: Visibility(
                              visible: m.value,
                              child: Container(
                                width: ScreenSize.horizontalBlockSize! * 30,
                                height: ScreenSize.horizontalBlockSize! * 100,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.white,
                                ),
                                child: ListView.builder(
                                  physics: const ClampingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: 12,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        m.value = false;
                                        Month.value = index;
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Center(
                                          child: Text(
                                            '${index}  Months',
                                            style: GoogleFonts.k2d(
                                                fontSize: ScreenSize.fSize_15(),
                                                color: const Color(0xff13316D),
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              banner.getBN('/SipCalculator')
            ],
          ),
        ),
      ),
    );
  }

  calculation() {
    int A = int.parse(deposit.value.text);
    double R = double.parse(Rate.value.text) / 12 / 100;
    int Y = int.parse(Year.value.toString()) * 12 +
        int.parse(Month.value.toString());
    var IA = A * ((pow((1 + R), (Y)) - 1) / R) * (1 + R);
    investment.value = 0.0.obs.value = double.parse((A * Y).toString());
    interest.value = IA - investment.value;
    sip.value = 0.0.obs.value = investment.value + interest.value;
  }
}

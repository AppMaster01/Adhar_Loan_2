// ignore_for_file: non_constant_identifier_names, sized_box_for_whitespace, unnecessary_string_interpolations, unnecessary_brace_in_string_interps, file_names

import 'dart:math';

import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:adhar_loan_2/media/qury.dart';
import 'package:adhar_loan_2/screen/TypesOfLoan/ApplyLoanForm/ApplyLoanForm1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../ad_controller/google_ads.dart';

class EmiCalculator extends StatefulWidget {
  const EmiCalculator({super.key});

  @override
  State<EmiCalculator> createState() => _EmiCalculatorState();
}

class _EmiCalculatorState extends State<EmiCalculator> {
  final Principal = TextEditingController().obs;
  final Rate = TextEditingController().obs;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    Principal.value.dispose();
    Rate.value.dispose();
  }

  var y = false.obs;
  var m = false.obs;
  var Year = 1.obs;
  var Month = 1.obs;
  var amount = 0.0.obs;
  var rate = 0.0.obs;
  var emiresult = 0.0.obs;
  var TotalPayment = 0.0.obs;
  var TotalInterst = 0.0.obs;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/EmiCalculator', ''),
      child: Scaffold(
        resizeToAvoidBottomInset: false,

        appBar: controllerAppbar.getappbar("EMI Calculator", () {
          backbuttoncontroller.showBackbuttonad(context, '/EmiCalculator', '');
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
                          SizedBox(height: ScreenSize.fSize_20()),
                          controllerfiled.gettextfiled(
                              double.infinity,
                              Principal.value,
                              "Principal Amount",
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
                                  Principal.value.clear();
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
                                  if (Principal.value.text.isEmpty ||
                                      Rate.value.text.isEmpty) {
                                    showToast();
                                  } else if (Principal.value.text.isNotEmpty ||
                                      Rate.value.text.isNotEmpty) {
                                    buildUser();
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: ScreenSize.fSize_90(),
                                    child: controllercaltext.getText(
                                        "Total Interest",
                                        "${TotalInterst.value.round()}"),
                                  ),
                                  SizedBox(width: ScreenSize.fSize_14()),
                                  Container(
                                    width: ScreenSize.fSize_90(),
                                    child: controllercaltext.getText(
                                        "Total Principle",
                                        "${Principal.value.text.isEmpty ? '${0}' : Principal.value.text}"),
                                  )
                                ],
                              ),
                              SizedBox(
                                  height: ScreenSize.horizontalBlockSize! * 2),
                              controllerdivider.getText(),
                              SizedBox(
                                  height: ScreenSize.horizontalBlockSize! * 2),
                              Obx(
                                () => Row(
                                  children: [
                                    SizedBox(
                                        width: ScreenSize.horizontalBlockSize! *
                                            7.5),
                                    controllercaltext.getText(
                                        "Total Payment (Principle + Interest)",
                                        "${TotalPayment.value.round()}"),
                                  ],
                                ),
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
                                      "EMI (Monthly Payment)",
                                      "${emiresult.value.round()}"),
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
              banner.getBN('/EmiCalculator')
            ],
          ),
        ),
      ),
    );
  }

  buildUser() {
    int P = int.parse(Principal.value.text);
    double R = double.parse(Rate.value.text) / 12 / 100;
    int Y = int.parse(Year.value.toString()) * 12 +
        int.parse(Month.value.toString());
    double M = double.parse(Y.toString());
    emiresult.value = (P * R * pow((1 + R), M) / (pow((1 + R), M) - 1));
    TotalPayment.value = emiresult.value * M;
    TotalInterst.value = 0.0.obs.value = TotalPayment.value - P;
  }
}

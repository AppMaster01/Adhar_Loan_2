// ignore_for_file: avoid_unnecessary_containers, non_constant_identifier_names

import 'package:adhar_loan_2/media/qury.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../ad_controller/back_ad_controller.dart';
import '../../../ad_controller/google_ads.dart';
import '../../../controller/widget_controller.dart';
import '../../TypesOfLoan/ApplyLoanForm/ApplyLoanForm1.dart';


class GstCalculator extends StatefulWidget {
  const GstCalculator({super.key});

  @override
  State<GstCalculator> createState() => _GstCalculatorState();
}

class _GstCalculatorState extends State<GstCalculator> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(context, '/GstCalculator', ''),
      child: Scaffold(
        resizeToAvoidBottomInset: false,

        appBar: controllerAppbar.getappbar("GST Calculator", () {
          backbuttoncontroller.showBackbuttonad(context, '/GstCalculator', '');
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
                child: Obx(
                  () => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: ScreenSize.fSize_20()),
                      Padding(
                        padding: EdgeInsets.only(
                            left: ScreenSize.fSize_10(),
                            top: ScreenSize.fSize_10()),
                        child: controllerText.getText(
                            "Amount*",
                            ScreenSize.horizontalBlockSize! * 4.8,
                            FontWeight.w900),
                      ),
                      SizedBox(height: ScreenSize.fSize_10()),
                      controllerfiled.gettextfiled(double.infinity, amount.value,
                          "Original Amount", TextInputType.number),
                      Padding(
                        padding: EdgeInsets.only(
                            left: ScreenSize.fSize_10(),
                            top: ScreenSize.fSize_15()),
                        child: controllerText.getText(
                            "GST Rate*",
                            ScreenSize.horizontalBlockSize! * 4.8,
                            FontWeight.w900),
                      ),
                      SizedBox(height: ScreenSize.fSize_10()),
                      controllerfiled.gettextfiled(double.infinity, rate.value,
                          "00", TextInputType.number),
                      SizedBox(height: ScreenSize.fSize_10()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Transform.scale(
                                  scale: 1.1,
                                  child: Radio(
                                      activeColor: const Color(0xFF13316D),
                                      value: 1,
                                      groupValue: id.value,
                                      onChanged: (value) {
                                        id.value = 1;
                                      }),
                                ),
                                controllerText.getText('Add GST',
                                    ScreenSize.fSize_13(), FontWeight.w800),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Transform.scale(
                                  scale: 1.1,
                                  child: Radio(
                                      activeColor: const Color(0xFF13316D),
                                      value: 2,
                                      groupValue: id.value,
                                      onChanged: (value) {
                                        id.value = 2;
                                      }),
                                ),
                                controllerText.getText('Remove GST',
                                    ScreenSize.fSize_13(), FontWeight.w800),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: ScreenSize.fSize_10()),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              amount.value.clear();
                              rate.value.clear();
                            },
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: ScreenSize.fSize_13()),
                              child: Container(
                                height: ScreenSize.horizontalBlockSize! * 13,
                                width: ScreenSize.horizontalBlockSize! * 35,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFA4B2CE),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: Center(
                                  child: controllerText.getText("Reset",
                                      ScreenSize.fSize_17(), FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (amount.value.text.isEmpty ||
                                  rate.value.text.isEmpty) {
                                showToast();
                              } else if (amount.value.text.isNotEmpty ||
                                  rate.value.text.isNotEmpty) {
                                calculation();
                              }
                            },
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: ScreenSize.fSize_13()),
                              child: Container(
                                height: ScreenSize.horizontalBlockSize! * 13,
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
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 5),
                          Row(
                            children: [
                              SizedBox(
                                  width: ScreenSize.horizontalBlockSize! * 7.5),
                              controllerTextwhite.getText('GST Price',
                                  ScreenSize.fSize_13(), FontWeight.w600),
                              SizedBox(width: ScreenSize.fSize_80()),
                              SizedBox(
                                width: ScreenSize.fSize_80(),
                                child: controllerTextwhite.getText(
                                    '${GST.value.round()}',
                                    ScreenSize.fSize_13(),
                                    FontWeight.w600),
                              )
                            ],
                          ),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 2),
                          controllerdivider.getText(),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 2),
                          Row(
                            children: [
                              SizedBox(
                                  width: ScreenSize.horizontalBlockSize! * 8),
                              controllerTextwhite.getText('Original Price',
                                  ScreenSize.fSize_13(), FontWeight.w600),
                              SizedBox(width: ScreenSize.fSize_50()),
                              SizedBox(
                                width: ScreenSize.fSize_80(),
                                child: controllerTextwhite.getText(
                                    '${Original.value.round()}',
                                    ScreenSize.fSize_13(),
                                    FontWeight.w600),
                              )
                            ],
                          ),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 2),
                          controllerdivider.getText(),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 2),
                          Row(
                            children: [
                              SizedBox(
                                  width: ScreenSize.horizontalBlockSize! * 8.8),
                              controllerTextwhite.getText('Net Price',
                                  ScreenSize.fSize_13(), FontWeight.w600),
                              SizedBox(width: ScreenSize.fSize_80()),
                              SizedBox(
                                width: ScreenSize.fSize_80(),
                                child: controllerTextwhite.getText(
                                    '${Net.value.round()}',
                                    ScreenSize.fSize_13(),
                                    FontWeight.w600),
                              )
                            ],
                          ),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 5),
                        ],
                      )),
                      SizedBox(height: ScreenSize.fSize_80()),
                    ],
                  ),
                ),
              ),
              banner.getBN('/GstCalculator')
            ],
          ),
        ),
      ),
    );
  }

  var GST = 0.0.obs;
  var id = 0.0.obs;
  var Original = 0.0.obs;
  var Net = 0.0.obs;
  final amount = TextEditingController().obs;
  final rate = TextEditingController().obs;

  calculation() {
    int Amount = int.parse(amount.value.text);
    double Rate = double.parse(rate.value.text);
    // GST.value = Amount * Rate / 100;
    GST.value = id.value == 1
        ? (Amount * (Rate / 100))
        : (Amount - (Amount * (100 / (100 + Rate))));
    Original.value = id.value == 1
        ? (double.parse(Amount.toString()) + GST.value)
        : (double.parse(Amount.toString()) - GST.value);
    Net.value = double.parse(Amount.toString());
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, prefer_const_constructors, sized_box_for_whitespace

import 'package:adhar_loan_2/screen/TypesOfLoan/ApplyLoanForm/ApplyLoanForm1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../ad_controller/back_ad_controller.dart';
import '../../../ad_controller/google_ads.dart';
import '../../../ad_controller/main_ad_controller.dart';
import '../../../controller/widget_controller.dart';
import '../../../media/qury.dart';

class ApplyLoanForm2 extends StatefulWidget {
  const ApplyLoanForm2({Key? key}) : super(key: key);

  @override
  State<ApplyLoanForm2> createState() => _ApplyLoanForm2State();
}

class _ApplyLoanForm2State extends State<ApplyLoanForm2> {
  RxBool form2 = false.obs;
  final ADDS = TextEditingController().obs;
  final STATE = TextEditingController().obs;
  final ZIP = TextEditingController().obs;
  final CITY = TextEditingController().obs;
  final County = TextEditingController().obs;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    ADDS.value.dispose();
    STATE.value.dispose();
    ZIP.value.dispose();
    CITY.value.dispose();
    County.value.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/ApplyLoanForm2', ''),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: controllerAppbar.getappbar('Fill up Form', () {
          backbuttoncontroller.showBackbuttonad(context, '/ApplyLoanForm2', '');
        }),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: const [Color(0xffBEDFF3), Color(0xffCFDAF8)])),
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Obx(
                  () => Column(
                    children: [
                      SizedBox(height: ScreenSize.fSize_20()),
                      Container(
                        width: ScreenSize.horizontalBlockSize!*30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            controllerindicatorwhite.getText(),
                            controllerindicator.getText(),
                            controllerindicatorwhite.getText(),
                            controllerindicatorwhite.getText(),

                          ],
                        ),
                      ),
                      SizedBox(height: ScreenSize.fSize_30()),
                      Row(
                        children: [
                          SizedBox(width: ScreenSize.fSize_15()),
                          controllerText.getText('Address Details :',
                              ScreenSize.fSize_20(), FontWeight.w700)
                        ],
                      ),
                      SizedBox(height: ScreenSize.fSize_28()),
                      controllertexfiled.gettextfiled(
                          double.infinity, ADDS.value,"Enter Address", TextInputType.name),
                      controllertexfiled.gettextfiled(
                          double.infinity, STATE.value, "Enter State/Province",TextInputType.name),
                      Stack(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: ScreenSize.fSize_170()),
                            child: controllertexfiled.gettextfiled(
                                ScreenSize.fSize_160(),
                                CITY.value,"Enter City",
                                TextInputType.name),
                          ),
                          controllertexfiled.gettextfiled(
                              ScreenSize.fSize_160(),
                              ZIP.value,"Enter Zipcode"
                              ,
                              TextInputType.number),
                        ],
                      ),
                      controllertexfiled.gettextfiled(
                          double.infinity, County.value, "Enter Country",TextInputType.name),
                      SizedBox(height: ScreenSize.fSize_40()),
                      controllercontainer.getcontainer(() async {
                        if (ADDS.value.text.isEmpty ||
                            STATE.value.text.isEmpty ||
                            ZIP.value.text.isEmpty ||
                            CITY.value.text.isEmpty ||
                            County.value.text.isEmpty) {
                          form2.value = true;
                          showToast();
                        } else if (ADDS.value.text.isNotEmpty ||
                            STATE.value.text.isNotEmpty ||
                            ZIP.value.text.isNotEmpty ||
                            CITY.value.text.isEmpty ||
                            County.value.text.isEmpty) {
                          form2.value = false;
                          controller.showbuttonad(
                              context, '/ApplyLoanForm3', '/ApplyLoanForm2', '');
                        }
                      }, 'Next'),
                      SizedBox(height: ScreenSize.fSize_100()),
                    ],
                  ),
                ),
              ),
              banner.getBN('/ApplyLoanForm2'),
            ],
          ),
        ),
      ),
    );
  }
}

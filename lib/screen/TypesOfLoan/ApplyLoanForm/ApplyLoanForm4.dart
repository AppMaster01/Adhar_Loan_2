// ignore_for_file: camel_case_types, non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../../ad_controller/back_ad_controller.dart';
import '../../../ad_controller/google_ads.dart';
import '../../../ad_controller/main_ad_controller.dart';
import '../../../controller/widget_controller.dart';
import '../../../media/qury.dart';

class ApplyLoanForm4 extends StatefulWidget {
  const ApplyLoanForm4({Key? key}) : super(key: key);

  @override
  State<ApplyLoanForm4> createState() => _ApplyLoanForm4State();
}

class _ApplyLoanForm4State extends State<ApplyLoanForm4> {
  final number = TextEditingController().obs;
  final Account = TextEditingController().obs;
  final Salary = TextEditingController().obs;
  RxBool form4 = false.obs;
  var abc = Get.arguments;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    number.value.dispose();
    Account.value.dispose();
    Salary.value.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/ApplyLoanForm4', abc),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: controllerAppbar.getappbar('Fill up Form', () {
          backbuttoncontroller.showBackbuttonad(
              context, '/ApplyLoanForm4', abc);
        }),
        body: Container(
          height: double.infinity,
          width: double.infinity,
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
                      SizedBox(height: ScreenSize.fSize_20()),
                      Container(
                        width: ScreenSize.horizontalBlockSize! * 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            controllerindicatorwhite.getText(),
                            controllerindicatorwhite.getText(),
                            controllerindicatorwhite.getText(),
                            controllerindicator.getText(),
                          ],
                        ),
                      ),
                      SizedBox(height: ScreenSize.fSize_40()),
                      Row(
                        children: [
                          SizedBox(width: ScreenSize.fSize_15()),
                          controllerText.getText('Contact Details :',
                              ScreenSize.fSize_20(), FontWeight.w700)
                        ],
                      ),
                      SizedBox(height: ScreenSize.fSize_20()),
                      controllertexfiled.gettextfiled(
                          double.infinity,
                          number.value,
                          'Enter Phone Number',
                          TextInputType.number),
                      controllertexfiled.gettextfiled(
                          double.infinity,
                          Account.value,
                          "Enter Account Number",
                          TextInputType.number),
                      controllertexfiled.gettextfiled(
                          double.infinity,
                          Salary.value,
                          "Enter Salary Amount",
                          TextInputType.number),
                      SizedBox(height: ScreenSize.fSize_20()),
                      controllercontainer.getcontainer(
                        () async {
                          if (number.value.text.isEmpty ||
                              Account.value.text.isEmpty ||
                              Salary.value.text.isEmpty) {
                            form4.value = true;
                            Fluttertoast.showToast(
                              msg: "Cannot be empty",
                              toastLength: Toast.LENGTH_SHORT,
                              timeInSecForIosWeb: 3,
                              textColor: Colors.white,
                              gravity: ToastGravity.SNACKBAR,
                              backgroundColor: Colors.red,
                              fontSize: 15,
                            );
                          } else if (number.value.text.isNotEmpty ||
                              Account.value.text.isNotEmpty ||
                              Salary.value.text.isNotEmpty) {
                            form4.value = false;
                            controller.showbuttonad(
                                context, '/Home', '/Form_4', abc);
                          }
                        },
                        "Next",
                      ),
                      SizedBox(height: ScreenSize.fSize_70()),
                    ],
                  ),
                ),
              ),
              banner.getBN('/ApplyLoanForm4'),
            ],
          ),
        ),
      ),
    );
  }
}

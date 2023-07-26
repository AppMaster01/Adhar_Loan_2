// ignore_for_file: camel_case_types, constant_identifier_names, non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../ad_controller/back_ad_controller.dart';
import '../../../ad_controller/google_ads.dart';
import '../../../ad_controller/main_ad_controller.dart';
import '../../../controller/widget_controller.dart';
import '../../../media/qury.dart';

Map Data = {};

showToast() {
  Fluttertoast.showToast(
    msg: "Empty",
    toastLength: Toast.LENGTH_SHORT,
    timeInSecForIosWeb: 3,
    textColor: Colors.white,
    gravity: ToastGravity.SNACKBAR,
    backgroundColor: Colors.red,
    fontSize: ScreenSize.fSize_18(),
  );
}

class ApplyLoanForm1 extends StatefulWidget {
  const ApplyLoanForm1({Key? key}) : super(key: key);

  @override
  State<ApplyLoanForm1> createState() => _ApplyLoanForm1State();
}

class _ApplyLoanForm1State extends State<ApplyLoanForm1> {
  RxBool form1 = false.obs;
  static const String KEYNAME = "name";

  final FirstName = TextEditingController().obs;

  final LastName = TextEditingController().obs;

  final MiddleName = TextEditingController().obs;

  var abc = Get.arguments;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    FirstName.value.dispose();
    LastName.value.dispose();
    MiddleName.value.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/ApplyLoanForm1', ''),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: controllerAppbar.getappbar('Fill up Form', () {
          backbuttoncontroller.showBackbuttonad(context, '/ApplyLoanForm1', '');
        }),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffBEDFF3), Color(0xffCFDAF8)])),
          child: Obx(
            () => Stack(
              children: [
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(height: ScreenSize.fSize_20()),
                      Container(
                        width: ScreenSize.horizontalBlockSize! * 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            controllerindicator.getText(),
                            controllerindicatorwhite.getText(),
                            controllerindicatorwhite.getText(),
                            controllerindicatorwhite.getText(),
                          ],
                        ),
                      ),
                      SizedBox(height: ScreenSize.fSize_40()),
                      Row(
                        children: [
                          SizedBox(width: ScreenSize.fSize_15()),
                          controllerText.getText('Personal Details :',
                              ScreenSize.fSize_20(), FontWeight.w900)
                        ],
                      ),
                      SizedBox(height: ScreenSize.fSize_28()),
                      controllertexfiled.gettextfiled(double.infinity,
                          FirstName.value, "First Name", TextInputType.name),
                      controllertexfiled.gettextfiled(double.infinity,
                          LastName.value, "Last Name", TextInputType.name),
                      controllertexfiled.gettextfiled(double.infinity,
                          MiddleName.value, "Middle Name", TextInputType.name),
                      SizedBox(height: ScreenSize.fSize_50()),
                      controllercontainer.getcontainer(() async {
                        if (FirstName.value.text.isEmpty ||
                            LastName.value.text.isEmpty ||
                            MiddleName.value.text.isEmpty) {
                          form1.value = true;
                          showToast();
                        } else if (FirstName.value.text.isNotEmpty ||
                            LastName.value.text.isNotEmpty ||
                            MiddleName.value.text.isNotEmpty) {
                          form1.value = false;
                          controller.showbuttonad(context, '/ApplyLoanForm2',
                              '/ApplyLoanForm1', '');
                        }
                        Data.addAll({
                          "Firstname": FirstName.value.text,
                          "LastName": LastName.value.text,
                        });
                        var prefs = await SharedPreferences.getInstance();
                        var userData = Data;
                        prefs.setString(KEYNAME, userData.toString());
                      }, 'Next'),
                      SizedBox(height: ScreenSize.fSize_70()),
                    ],
                  ),
                ),
                banner.getBN('/ApplyLoanForm1'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

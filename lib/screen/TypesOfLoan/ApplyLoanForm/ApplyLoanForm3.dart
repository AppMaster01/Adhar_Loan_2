// ignore_for_file: constant_identifier_names, camel_case_types, non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../ad_controller/back_ad_controller.dart';
import '../../../ad_controller/google_ads.dart';
import '../../../ad_controller/main_ad_controller.dart';
import '../../../controller/widget_controller.dart';
import '../../../media/qury.dart';
import 'ApplyLoanForm1.dart';

enum SingingCharacter { Male, Female }

class ApplyLoanForm3 extends StatefulWidget {
  const ApplyLoanForm3({Key? key}) : super(key: key);

  @override
  State<ApplyLoanForm3> createState() => _ApplyLoanForm3State();
}

class _ApplyLoanForm3State extends State<ApplyLoanForm3> {
  final _character = SingingCharacter.Male.obs;

  RxBool form3 = false.obs;

  final BDATE = TextEditingController().obs;

  final EMIAL = TextEditingController().obs;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    BDATE.value.dispose();
    EMIAL.value.dispose();
  }

  static const String KEYNAME = "name";

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/ApplyLoanForm3', ''),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: controllerAppbar.getappbar('Fill up Form', () {
          backbuttoncontroller.showBackbuttonad(context, '/ApplyLoanForm3', '');
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
                            controllerindicator.getText(),
                            controllerindicatorwhite.getText(),
                          ],
                        ),
                      ),
                      SizedBox(height: ScreenSize.fSize_50()),
                      Row(
                        children: [
                          SizedBox(width: ScreenSize.fSize_15()),
                          controllerText.getText('Address Details :',
                              ScreenSize.fSize_20(), FontWeight.w700)
                        ],
                      ),
                      SizedBox(height: ScreenSize.fSize_20()),
                      controllertexfiled.gettextfiled(
                          double.infinity, BDATE.value,"Enter Date of Birth", TextInputType.datetime),
                      SizedBox(height: ScreenSize.fSize_15()),
                      Row(
                        children: [
                          SizedBox(width: ScreenSize.fSize_13()),
                          Text(
                            'Select Gender',
                            style: GoogleFonts.k2d(
                                color: const Color(0xFF13316D),
                                fontSize: ScreenSize.fSize_15(),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(height: ScreenSize.fSize_6()),
                      Row(
                        children: [
                          Transform.scale(
                            scale: 1.2,
                            child: Radio(
                                activeColor: const Color(0xFF13316D),
                                value: SingingCharacter.Male,
                                groupValue: _character.value,
                                onChanged: (value) {
                                  _character.value = value!;
                                }),
                          ),
                          controllerText.getText(
                              'Male', ScreenSize.fSize_15(), FontWeight.w700),
                          SizedBox(width: ScreenSize.fSize_50()),
                          Transform.scale(
                            scale: 1.2,
                            child: Radio(
                                activeColor: const Color(0xFF13316D),
                                value: SingingCharacter.Female,
                                groupValue: _character.value,
                                onChanged: (value) {
                                  _character.value = value!;
                                }),
                          ),
                          Text(
                            'Female',
                            style: GoogleFonts.k2d(
                                fontWeight: FontWeight.w700,
                                fontSize: ScreenSize.fSize_15()),
                          ),
                        ],
                      ),
                      SizedBox(height: ScreenSize.fSize_12()),
                      controllertexfiled.gettextfiled(double.infinity,
                          EMIAL.value,"Enter Email Address", TextInputType.emailAddress),
                      SizedBox(height: ScreenSize.fSize_40()),
                      controllercontainer.getcontainer(() async {
                        if (BDATE.value.text.isEmpty ||
                            EMIAL.value.text.isEmpty) {
                          form3.value = true;
                          Fluttertoast.showToast(
                            msg: "Cannot be empty",
                            toastLength: Toast.LENGTH_SHORT,
                            timeInSecForIosWeb: 3,
                            textColor: Colors.white,
                            gravity: ToastGravity.SNACKBAR,
                            backgroundColor: Colors.red,
                            fontSize: 15,
                          );
                        } else if (BDATE.value.text.isNotEmpty ||
                            EMIAL.value.text.isNotEmpty) {
                          form3.value = false;
                          Data.addAll({
                            "EMIAL": EMIAL.value.text,
                          });
                          controller.showbuttonad(context, '/ApplyLoanForm4',
                              '/ApplyLoanForm3', '');

                        }
                        var prefs = await SharedPreferences.getInstance();
                        var userData = Data.values;
                        // userData.add(Data);
                        prefs.setString(KEYNAME, userData.toString());
                        // var getname = prefs.getString(KEYNAME);
                        // user = await json.decode(getname.toString());
                        // shared();
                      }, 'Next'),
                      SizedBox(height: ScreenSize.fSize_70()),
                    ],
                  ),
                ),
              ),
              banner.getBN('/ApplyLoanForm3'),
            ],
          ),
        ),
      ),
    );
  }
}

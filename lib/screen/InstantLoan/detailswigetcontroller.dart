// ignore_for_file: sized_box_for_whitespace, camel_case_types

import 'package:adhar_loan_2/ad_controller/main_ad_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/widget_controller.dart';
import '../../media/qury.dart';

final controlleractivate = Get.put(activatecontroller());
final controllercopylink = Get.put(copylinkcontroller());
final controllerclime = Get.put(climecontroller());
final controllerdetails1 = Get.put(details1controller());

class activatecontroller extends GetxController {
  getText() {
    return controllerwhitelist.get(Column(
      children: [
        SizedBox(height: ScreenSize.fSize_10()),
        controllerdiscrip.getText("Way to Check EPF Balance Online"),
        SizedBox(height: ScreenSize.fSize_10()),
        controllerdiscrip.getText(
            """The EPFO has been introducing new methods for employees to check the EPF balance and is in the process of developing the existing platforms that can be used"""),
        SizedBox(height: ScreenSize.fSize_10()),
        controllerdiscrip.getText("Online Portal"),
        SizedBox(height: ScreenSize.fSize_10()),
        controllerdiscrip.getText("SMS Service"),
        SizedBox(height: ScreenSize.fSize_10()),
        controllerdiscrip.getText("Missed Call"),
        SizedBox(height: ScreenSize.fSize_10()),
      ],
    ));
  }
}

class copylinkcontroller extends GetxController {
  getText(text1, text2) {
    return Column(
      children: [
        controllerlinkcopy.getText(""),
        Padding(
          padding: const EdgeInsets.all(15),
          child: controllerwhitelist.get(Column(
            children: [
              SizedBox(height: ScreenSize.fSize_25()),
              Container(
                  width: ScreenSize.fSize_200(),
                  child: Text(
                    text1,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.k2d(
                        color: Colors.black,
                        fontSize: ScreenSize.fSize_16(),
                        fontWeight: FontWeight.w500),
                  )),
              SizedBox(height: ScreenSize.fSize_25()),
              Container(
                  width: ScreenSize.fSize_200(),
                  child: Text(
                    text2,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.k2d(
                        color: Colors.black,
                        fontSize: ScreenSize.fSize_16(),
                        fontWeight: FontWeight.w500),
                  )),
              SizedBox(height: ScreenSize.fSize_25()),
            ],
          )),
        )
      ],
    );
  }
}

class climecontroller extends GetxController {
  getText() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: text.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    controller.showbuttonad(context, '/clime', '/Details', '');
                  },
                  child: controllerwhitecontainr2.get(
                      color[index], color[index], image[index], text[index]),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}


class details1controller extends GetxController {
  getText(child) {
    return Padding(
        padding: const EdgeInsets.all(10), child: controllerwhitelist.get(child));
  }
}

List color = [
  const Color(0xffE2FBDB),
  const Color(0xffFEEBDA),
  const Color(0xffF5E5FF),
];
List image = [
  "asset/image/Icon/Claim/Claim Status.png",
  "asset/image/Icon/Claim/Member Claim.png",
  "asset/image/Icon/Claim/Apply For Claim.png",
];
List text = [
  "Your Claim Status",
  "Member Claim",
  "Apply for Claim",
];

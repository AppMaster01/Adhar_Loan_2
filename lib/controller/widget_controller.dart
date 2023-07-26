// ignore_for_file: deprecated_member_use, non_constant_identifier_names, camel_case_types, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../ad_controller/main_ad_controller.dart';
import '../media/qury.dart';

String CopyText =
    "https://www.bajajfinserv.in/instant-personal-loan-on-aadhar-card";
final copy = Get.put(copybutton());
final controllertexfiled = Get.put(TEXTFILEDcontroller());
final controllerfiled = Get.put(filedcontroller());
final controlleryer = Get.put(yercontroller());
final controllerText = Get.put(textcontroller());
final controllerdiscripText = Get.put(discriptextcontroller());
final controllerwhitmini = Get.put(whiteminicontroller());
final controllerlink = Get.put(linkcontroller());
final controllerlinkcopy = Get.put(linkcopycontroller());
final controllerTextwhite = Get.put(textwhitecontroller());
final controllercalclucontain = Get.put(calculatorcontaincontroller());
final controllerdivider = Get.put(dividercontroller());
final controllercaltext = Get.put(caltextcontroller());
final controllercontainer = Get.put(containercontroller());
final controllerpoint = Get.put(pointcontroller());
final controllercontainermini = Get.put(minicontincontroller());
final controllerblue = Get.put(bluencontroller());
final controllercontainerwhite = Get.put(containerwhitcontroller());
final controllershare = Get.put(shareController());
final controllerAppbar = Get.put(AppbarController());
final controllerdrawer = Get.put(drawerController());
final controllericon = Get.put(iconController());
final controllerwhitelist = Get.put(whitelistController());
final controllerwhitecontainr = Get.put(whitecontainerController());
final controllerwhitecontainr2 = Get.put(whitecontainerController2());
final controllerbank = Get.put(bankController());
final controllerbankdetails = Get.put(bankdetailsController());
final controllerEXIT = Get.put(EXITController());
final controllerminiimage = Get.put(imageminicontroller());
final controllerselectColorchange = Get.put(selectcontroller());
final controllerselectColorchange1 = Get.put(select1controller());
final controllerselectColorchangebig = Get.put(selectbigcontroller());
final controllerdiscrip = Get.put(discripcontroller());
final controllerindicator = Get.put(indicatorcontroller());
final controllerindicatorwhite = Get.put(indicatorwhitecontroller());

class copybutton extends GetxController {
  getcopy(CopyText) {
    Clipboard.setData(ClipboardData(text: CopyText));
    Fluttertoast.showToast(
      msg: "Link copied",
      toastLength: Toast.LENGTH_SHORT,
      timeInSecForIosWeb: 3,
      textColor: Colors.white,
      gravity: ToastGravity.SNACKBAR,
      backgroundColor: const Color(0xFF152C70),
      fontSize: 15,
    );
  }
}

class indicatorcontroller extends GetxController {
  getText() {
    return Container(
      width: ScreenSize.horizontalBlockSize! * 6,
      height: ScreenSize.horizontalBlockSize! * 1.8,
      decoration: ShapeDecoration(
        color: const Color(0xFF152C70),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}

class indicatorwhitecontroller extends GetxController {
  getText() {
    return Container(
      width: ScreenSize.horizontalBlockSize! * 1.8,
      height: ScreenSize.horizontalBlockSize! * 1.8,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: OvalBorder(),
      ),
    );
  }
}

class textwhitecontroller extends GetxController {
  getText(text, size, wight) {
    return Text(
      text,
      style: GoogleFonts.k2d(
          color: Colors.white, fontSize: size, fontWeight: wight),
    );
  }
}

class calculatorcontaincontroller extends GetxController {
  getText(child) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: ShapeDecoration(
          color: const Color(0xFF13316D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: child,
      ),
    );
  }
}

class dividercontroller extends GetxController {
  getText() {
    return Divider(
      color: Colors.white30,
      indent: ScreenSize.fSize_28(),
      endIndent: ScreenSize.fSize_28(),
      thickness: ScreenSize.horizontalBlockSize! * 0.5,
    );
  }
}

class caltextcontroller extends GetxController {
  getText(text, text1) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        controllerTextwhite.getText(
            text, ScreenSize.fSize_13(), FontWeight.w600),
        SizedBox(height: ScreenSize.horizontalBlockSize! * 1),
        controllerTextwhite.getText(
            text1, ScreenSize.fSize_13(), FontWeight.w600)
      ],
    );
  }
}

class discripcontroller extends GetxController {
  getText(text) {
    return Container(
        width: ScreenSize.horizontalBlockSize! * 80,
        child: Text(
          text,
          style: GoogleFonts.k2d(
              color: Colors.black,
              fontSize: ScreenSize.fSize_13(),
              fontWeight: FontWeight.w700),
        ));
  }
}

class imageminicontroller extends GetxController {
  getText(colorring, colorcontain, image) {
    return Center(
      child: Container(
        width: ScreenSize.fSize_45(),
        height: ScreenSize.fSize_45(),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.40, color: colorring),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: Center(
          child: Container(
            width: ScreenSize.fSize_40(),
            height: ScreenSize.fSize_40(),
            decoration: ShapeDecoration(
              color: colorcontain,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
            ),
            child: Center(
                child: Image(
              image: AssetImage(image),
              height: ScreenSize.fSize_25(),
            )),
          ),
        ),
      ),
    );
  }
}

class EXITController extends GetxController {
  getEXIT(ontap, color, text, Tcolor) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: ScreenSize.fSize_110(),
        height: ScreenSize.horizontalBlockSize! * 13,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
            child: Text(
          text,
          style: GoogleFonts.almarai(
              fontSize: ScreenSize.fSize_15(),
              fontWeight: FontWeight.w700,
              color: Tcolor),
        )),
      ),
    );
  }
}

class iconController extends GetxController {
  geticons(String image, String name, onTap) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: ScreenSize.fSize_40()),
              Image(height: ScreenSize.fSize_28(), image: AssetImage(image)),
              SizedBox(width: ScreenSize.fSize_23()),
              Text(name,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: ScreenSize.fSize_16())),
            ],
          ),
        ),
      ],
    );
  }
}

class whitelistController extends GetxController {
  get(child) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 2,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: child,
    );
  }
}

class selectcontroller extends GetxController {
  getselect(ontap, text) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
          padding: const EdgeInsets.all(8),
          child: controllerwhitelist.get(
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: ScreenSize.fSize_10(),
                      height: ScreenSize.horizontalBlockSize! * 17.11,
                      decoration: const BoxDecoration(
                          color: Color(0xff152C70),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10))),
                    ),
                    SizedBox(
                      width: ScreenSize.fSize_15(),
                    ),
                    Container(
                        width: ScreenSize.horizontalBlockSize! * 80,
                        child: controllerText.getText(
                            text, ScreenSize.fSize_15(), FontWeight.w600))
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

class select1controller extends GetxController {
  getselect(ontap, text) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            width: double.infinity,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 2,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(children: [
                        Container(
                          width: ScreenSize.fSize_10(),
                          height: ScreenSize.horizontalBlockSize! * 16.5,
                          decoration: const BoxDecoration(
                              color: Color(0xff152C70),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topLeft: Radius.circular(10))),
                        ),
                        SizedBox(
                          width: ScreenSize.fSize_15(),
                        ),
                        Container(
                            width: ScreenSize.horizontalBlockSize! * 70,
                            child: controllerText.getText(
                                text, ScreenSize.fSize_14(), FontWeight.w600))
                      ]),
                    ),
                    Center(
                        child: Image(
                      image: const AssetImage(
                          'asset/image/Icon/chevron-right.png'),
                      width: ScreenSize.horizontalBlockSize! * 8,
                    ))
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

class selectbigcontroller extends GetxController {
  getselect(ontap, text) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
          padding: const EdgeInsets.all(8),
          child: controllerwhitelist.get(
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(children: [
                        Container(
                          width: ScreenSize.fSize_10(),
                          height: ScreenSize.horizontalBlockSize! * 22,
                          decoration: const BoxDecoration(
                              color: Color(0xff152C70),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topLeft: Radius.circular(10))),
                        ),
                        SizedBox(
                          width: ScreenSize.fSize_15(),
                        ),
                        Container(
                            width: ScreenSize.horizontalBlockSize! * 70,
                            child: controllerText.getText(
                                text, ScreenSize.fSize_14(), FontWeight.w600))
                      ]),
                    ),
                    Center(
                        child: Image(
                      image: const AssetImage(
                          'asset/image/Icon/chevron-right.png'),
                      width: ScreenSize.horizontalBlockSize! * 8,
                    ))
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

class whitecontainerController extends GetxController {
  get(ontap, width, hight, child) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: width,
        height: hight,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
            )
          ],
        ),
        child: child,
      ),
    );
  }
}

class whitecontainerController2 extends GetxController {
  get(colorring, colorcontain, image, text) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: ScreenSize.horizontalBlockSize! * 17,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
            )
          ],
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            child: Row(
              children: [
                SizedBox(width: ScreenSize.fSize_20()),
                Center(
                  child: Container(
                    width: ScreenSize.horizontalBlockSize! * 11.5,
                    height: ScreenSize.horizontalBlockSize! * 11.5,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.40, color: colorring),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Center(
                      child: Container(
                        width: ScreenSize.fSize_34(),
                        height: ScreenSize.fSize_34(),
                        decoration: ShapeDecoration(
                          color: colorcontain,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        child: Center(
                            child: Image(
                          image: AssetImage(image),
                          height: ScreenSize.fSize_25(),
                        )),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: ScreenSize.fSize_30()),
                controllerText.getText(
                    text, ScreenSize.fSize_16(), FontWeight.w700),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: ScreenSize.fSize_12()),
            child: Center(
                child: Image(
              image: const AssetImage('asset/image/Icon/chevron-right.png'),
              height: ScreenSize.fSize_25(),
            )),
          ),
        ]),
      ),
    );
  }
}

class bankController extends GetxController {
  get(colorring, colorcontain, text, text1) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: ScreenSize.horizontalBlockSize! * 17,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
            )
          ],
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            child: Row(
              children: [
                SizedBox(width: ScreenSize.fSize_20()),
                Center(
                  child: Container(
                    width: ScreenSize.horizontalBlockSize! * 11.5,
                    height: ScreenSize.horizontalBlockSize! * 11.5,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.40, color: colorring),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Center(
                      child: Container(
                        width: ScreenSize.fSize_34(),
                        height: ScreenSize.fSize_34(),
                        decoration: ShapeDecoration(
                          color: colorcontain,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        child: Center(
                            child: Text(
                          text,
                          style: GoogleFonts.k2d(
                              color: const Color(0xff152c70),
                              fontWeight: FontWeight.w500,
                              fontSize: ScreenSize.fSize_20()),
                        )),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: ScreenSize.fSize_30()),
                Container(
                  width: ScreenSize.fSize_200(),
                  child: controllerText.getText(
                      text1, ScreenSize.fSize_16(), FontWeight.w700),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: ScreenSize.fSize_12()),
            child: Center(
                child: Image(
              image: const AssetImage('asset/image/Icon/chevron-right.png'),
              height: ScreenSize.fSize_25(),
            )),
          ),
        ]),
      ),
    );
  }
}

class bankdetailsController extends GetxController {
  get(colorring, colorcontain, image, details, acount, ontap) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: ScreenSize.horizontalBlockSize! * 22,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
            )
          ],
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            child: Row(
              children: [
                SizedBox(width: ScreenSize.fSize_20()),
                Center(
                  child: Container(
                    width: ScreenSize.horizontalBlockSize! * 13.5,
                    height: ScreenSize.horizontalBlockSize! * 13.5,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.40, color: colorring),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Center(
                      child: Container(
                        width: ScreenSize.horizontalBlockSize! * 12,
                        height: ScreenSize.horizontalBlockSize! * 12,
                        decoration: ShapeDecoration(
                          color: colorcontain,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        child: Center(
                            child: Image(
                          image: AssetImage(image),
                          height: ScreenSize.fSize_23(),
                        )),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: ScreenSize.fSize_20()),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: ScreenSize.fSize_17()),
                    controllerText.getText(
                        details, ScreenSize.fSize_17(), FontWeight.w800),
                    SizedBox(height: ScreenSize.fSize_6()),
                    controllerText.getText(
                        acount, ScreenSize.fSize_15(), FontWeight.w400),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: ontap,
            child: Padding(
              padding: EdgeInsets.only(right: ScreenSize.fSize_25()),
              child: Center(
                  child: Image(
                image: const AssetImage(
                    'asset/image/Icon/Balance Check Share Icon.png'),
                height: ScreenSize.fSize_20(),
              )),
            ),
          ),
        ]),
      ),
    );
  }
}

class TEXTFILEDcontroller extends GetxController {
  gettextfiled(widght, controller, text, KYPE) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                height: ScreenSize.horizontalBlockSize! * 15,
                width: widght,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 1,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Center(
                  child: TextField(
                    controller: controller,
                    keyboardType: KYPE,
                    cursorColor: const Color(0xFF152C70),
                    decoration: InputDecoration(
                      hintText: text,
                      hintStyle: GoogleFonts.k2d(
                          color: const Color(0xFFA3ADC8),
                          fontSize: ScreenSize.fSize_15(),
                          fontWeight: FontWeight.w400),
                      contentPadding: EdgeInsetsDirectional.symmetric(
                          horizontal: ScreenSize.horizontalBlockSize! * 8,
                          vertical: ScreenSize.fSize_12()),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                width: ScreenSize.fSize_10(),
                height: ScreenSize.horizontalBlockSize! * 15.1,
                decoration: const BoxDecoration(
                    color: Color(0xFF152C70),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10))),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class filedcontroller extends GetxController {
  gettextfiled(widght, controller, text, KYPE) {
    return Padding(
      padding: EdgeInsets.only(
          left: ScreenSize.fSize_13(), right: ScreenSize.fSize_13()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: ScreenSize.horizontalBlockSize! * 15,
                width: widght,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 1,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Center(
                  child: TextField(
                    controller: controller,
                    keyboardType: KYPE,
                    cursorColor: const Color(0xFF152C70),
                    decoration: InputDecoration(
                      hintText: text,
                      hintStyle: GoogleFonts.k2d(
                          color: Colors.black,
                          fontSize: ScreenSize.fSize_15(),
                          fontWeight: FontWeight.w600),
                      contentPadding: EdgeInsetsDirectional.symmetric(
                          horizontal: ScreenSize.horizontalBlockSize! * 8,
                          vertical: ScreenSize.fSize_12()),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class yercontroller extends GetxController {
  gettextfiled(ontap, text) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: ScreenSize.horizontalBlockSize! * 15,
        width: ScreenSize.horizontalBlockSize! * 42,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 1,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(
          child: controllerText.getText(
              text, ScreenSize.fSize_17(), FontWeight.w600),
        ),
      ),
    );
  }
}

class textcontroller extends GetxController {
  getText(text, size, wight) {
    return Text(
      text,
      style: GoogleFonts.k2d(
          color: Colors.black, fontSize: size, fontWeight: wight),
    );
  }
}

class discriptextcontroller extends GetxController {
  getText(text, wight) {
    return Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          width: ScreenSize.horizontalBlockSize! * 76,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.k2d(
                color: Colors.black,
                fontSize: ScreenSize.fSize_13(),
                fontWeight: wight),
          ),
        ));
  }
}

class whiteminicontroller extends GetxController {
  getText(text, ontap) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
          padding: EdgeInsets.only(
              left: ScreenSize.horizontalBlockSize! * 16,
              right: ScreenSize.horizontalBlockSize! * 16),
          child: controllerwhitelist.get(Column(
            children: [
              SizedBox(height: ScreenSize.fSize_15()),
              Center(
                child: controllerText.getText(
                    text, ScreenSize.fSize_13(), FontWeight.w600),
              ),
              SizedBox(height: ScreenSize.fSize_15())
            ],
          ))),
    );
  }
}

class linkcopycontroller extends GetxController {
  getText(text) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            copy.getcopy(text);
          },
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: controllerwhitelist.get(Column(
                children: [
                  SizedBox(height: ScreenSize.fSize_18()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Image(
                            image: const AssetImage(
                                'asset/image/Icon/Link Pan Aadhar Icon.png'),
                            height: ScreenSize.horizontalBlockSize! * 5),
                      ),
                      SizedBox(width: ScreenSize.fSize_12()),
                      Text(
                        'Copy Link',
                        style: GoogleFonts.k2d(
                            color: const Color(0xff152C70),
                            fontSize: ScreenSize.fSize_15(),
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  SizedBox(height: ScreenSize.fSize_18()),
                ],
              ))),
        ),
      ],
    );
  }
}

class linkcontroller extends GetxController {
  getText() {
    return Column(
      children: [
        controllerlinkcopy.getText(
            '"https://www.bajajfinserv.in/instant-personal-loan-on-aadhar-card"'),
        Padding(
          padding: const EdgeInsets.all(15),
          child: controllerwhitelist.get(Column(
            children: [
              SizedBox(height: ScreenSize.fSize_13()),
              controllerText.getText("Book an Appointment",
                  ScreenSize.fSize_12(), FontWeight.w500),
              SizedBox(height: ScreenSize.fSize_13()),
              Center(
                child: Container(
                    width: ScreenSize.horizontalBlockSize! * 80,
                    child: Text(
                      'This facility is for booking an appointment at an Aadhaar Seva Kendra for Aadhaar services listed below:',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.k2d(
                          color: Colors.black,
                          fontSize: ScreenSize.fSize_12(),
                          fontWeight: FontWeight.w500),
                    )),
              ),
              SizedBox(height: ScreenSize.fSize_15()),
              controllerpoint.getcontainer("⬤    Fresh Aadhaar Enrolment"),
              SizedBox(height: ScreenSize.fSize_10()),
              controllerpoint.getcontainer("⬤    Name Update"),
              SizedBox(height: ScreenSize.fSize_10()),
              controllerpoint.getcontainer("⬤    Address Update"),
              SizedBox(height: ScreenSize.fSize_10()),
              controllerpoint.getcontainer("⬤    Mobile No. Update"),
              SizedBox(height: ScreenSize.fSize_10()),
              controllerpoint.getcontainer("⬤    Email ID Update"),
              SizedBox(height: ScreenSize.fSize_10()),
              controllerpoint.getcontainer("⬤    Date of Birth Update"),
              SizedBox(height: ScreenSize.fSize_10()),
              controllerpoint.getcontainer("⬤    Gender Update"),
              SizedBox(height: ScreenSize.fSize_10()),
              controllerpoint.getcontainer(
                  "⬤    Biometric (Photo + Fingerprints + Iris) Update"),
              SizedBox(height: ScreenSize.fSize_15()),
            ],
          )),
        )
      ],
    );
  }
}

class containercontroller extends GetxController {
  getcontainer(ontap, text) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: ScreenSize.horizontalBlockSize! * 45,
        height: ScreenSize.horizontalBlockSize! * 13,
        decoration: ShapeDecoration(
          color: const Color(0xFF13316D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Center(
          child: Text(text,
              style: GoogleFonts.k2d(
                  fontSize: ScreenSize.fSize_18(),
                  color: Colors.white,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}

class pointcontroller extends GetxController {
  getcontainer(text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        controllerText.getText(text, ScreenSize.fSize_12(), FontWeight.w500)
      ],
    );
  }
}

class minicontincontroller extends GetxController {
  getcontainer(
      ontap, width, hight, colorring, colorcontain, image, text, size) {
    return GestureDetector(
        onTap: ontap,
        child: Container(
          width: width,
          height: hight,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              controllerminiimage.getText(colorring, colorcontain, image),
              Container(
                width: ScreenSize.fSize_120(),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.k2d(
                      color: Colors.black,
                      fontSize: size,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ));
  }
}

class bluencontroller extends GetxController {
  getcontainer(ontap, hight, text) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: hight,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xff13316D)),
          child: Center(
            child: controllerTextwhite.getText(
                text, ScreenSize.horizontalBlockSize! * 5, FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

class containerwhitcontroller extends GetxController {
  getcontainer(ontap, text) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: ScreenSize.horizontalBlockSize! * 35,
        height: ScreenSize.horizontalBlockSize! * 10,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Center(
          child: Text(text,
              style: GoogleFonts.k2d(
                  fontSize: ScreenSize.fSize_17(),
                  color: const Color(0xff152C70),
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}

class shareController extends GetxController {
  getshare(ontap, color, image, text) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Column(
          children: [
            Container(
              height: ScreenSize.horizontalBlockSize! * 12,
              width: ScreenSize.horizontalBlockSize! * 12,
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(100)),
              child: Center(
                  child: Image(
                image: AssetImage(image),
                width: ScreenSize.fSize_28(),
              )),
            ),
            SizedBox(height: ScreenSize.fSize_10()),
            controllerText.getText(
                text, ScreenSize.horizontalBlockSize! * 4, FontWeight.w500)
          ],
        ),
      ),
    );
  }
}

class AppbarController extends GetxController {
  getappbar(text, ontap) {
    return AppBar(
        leading: GestureDetector(
          onTap: ontap,
          child: Center(
              child: Image(
            image: const AssetImage('asset/image/Icon/arrowleft.png'),
            width: ScreenSize.fSize_25(),
          )),
        ),
        title: Text(
          text,
          style: GoogleFonts.k2d(
              color: Colors.black,
              fontSize: ScreenSize.fSize_18(),
              fontWeight: FontWeight.w800),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffBEDFF3), Color(0xffCFDAF8)])),
        ),
        elevation: 0);
  }
}

class drawerController extends GetxController {
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
              height: ScreenSize.horizontalBlockSize! * 83,
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
              ]),
            ),
          ],
        ));
  }

  getelevated(
    context,
  ) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            height: ScreenSize.horizontalBlockSize! * 75,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffBEDFF3), Color(0xffCFDAF8)])),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: ScreenSize.fSize_20()),
                    Image(
                        height: ScreenSize.fSize_150(),
                        image: const AssetImage('asset/image/Logo/Logo1.png')),
                    Text(
                      'Aadhar Loan',
                      style: GoogleFonts.k2d(
                          color: const Color(0xff13316D),
                          fontSize: ScreenSize.horizontalBlockSize! * 9,
                          fontWeight: FontWeight.w800),
                    )
                  ]),
            ),
          ),
          SizedBox(height: ScreenSize.fSize_20()),
          controllericon.geticons('asset/image/Icon/home.png', 'Home', () {
            // controller.showbuttonad(context, '/Home', '/Home', '');
            Navigator.pop(context);
          }),
          SizedBox(height: ScreenSize.fSize_20()),
          controllericon.geticons(
              'asset/image/Icon/CurrencyCircleDollar.png', 'Apply', () {
            controller.showbuttonad(context, '/ApplyLoanForm1', '/Home', '');
            Navigator.pop(context);
          }),
          SizedBox(height: ScreenSize.fSize_20()),
          controllericon.geticons('asset/image/Icon/Guide.png', 'Guide', () {
            controller.showbuttonad(context, '/Loan_Work', '/Home', '');
            Navigator.pop(context);
          }),
          SizedBox(height: ScreenSize.fSize_20()),
          controllericon.geticons(
              'asset/image/Icon/Rate icon.png', 'Rate Us', _shareURL),
          SizedBox(height: ScreenSize.fSize_20()),
          controllericon.geticons('asset/image/Icon/Share icon.png', 'Share',
              () {
            Share.share('https://www.google.com/');
            Navigator.pop(context);
          }),
          SizedBox(height: ScreenSize.fSize_20()),
          controllericon.geticons(
              'asset/image/Icon/Privacy Policy icon.png', 'Privacy Policy', () {
            controller.showbuttonad(context, '/In_App_Privacy', '/Home', '');
            Navigator.pop(context);
          }),
          SizedBox(height: ScreenSize.fSize_20()),
          controllericon.geticons('asset/image/Icon/Exit.png', 'Exit', () {
            Get.back();
            _onWillPop(context);
          }),
          SizedBox(height: ScreenSize.fSize_20()),
        ],
      ),
    );
  }

  _shareURL() async {
    const url = 'https://in.linkedin.com/company/infinitizi?trk=ppro_cprof';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

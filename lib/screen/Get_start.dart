// ignore_for_file: camel_case_types, deprecated_member_use

import 'dart:async';
import 'dart:io';

import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../ad_controller/main_ad_controller.dart';
import '../media/qury.dart';
import 'Home.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  final connectionStatus = ConnectivityResult.none.obs;
  final Connectivity connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> connectivitySubscription;

  var load = false.obs;

  @override
  void initState() {
    super.initState();
    connectivitySubscription =
        connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void dispose() {
    connectivitySubscription.cancel();
    super.dispose();
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    print("resulttt $result");
    if (result == ConnectivityResult.none) {
      showDialogBox();
      load.value = true;
    } else {
      load.value ? Navigator.pop(context, 'Cancel') : null;
    }
  }

  showDialogBox() => showCupertinoDialog<String>(
      context: context,
      builder: (BuildContext context) => Container(
            color: Colors.black54,
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: Container(
                  height: ScreenSize.fSize_120(),
                  width: ScreenSize.fSize_200(),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(
                          colors: [Color(0xffBEDFF3), Color(0xffCFDAF8)])),
                  child: Column(
                    children: [
                      SizedBox(height: ScreenSize.fSize_12()),
                      Image(
                          image: AssetImage('asset/image/Icon/207492-200.png'),
                          height: ScreenSize.fSize_30()),
                      SizedBox(height: ScreenSize.fSize_4()),
                      controllerText.getText("No Connection",
                          ScreenSize.fSize_18(), FontWeight.w800),
                      SizedBox(height: ScreenSize.fSize_2()),
                      Container(
                        width: ScreenSize.fSize_150(),
                        child: Text(
                          "Please check your internet connectivity",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.k2d(
                              color: Colors.black,
                              fontSize: ScreenSize.fSize_13(),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(height: ScreenSize.fSize_10()),
                    ],
                  ),
                ),
              ),
            ),
          ));

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFCFB),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Center(
              child: Column(children: [
                SizedBox(height: ScreenSize.fSize_100()),
                Image(
                    image: const AssetImage('asset/image/Vector Image 1.png'),
                    height: ScreenSize.horizontalBlockSize! * 60),
                SizedBox(height: ScreenSize.fSize_50()),
                Text(
                  'Aadhar Loan',
                  style: GoogleFonts.k2d(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenSize.horizontalBlockSize! * 9,
                      shadows: [
                        const Shadow(
                            offset: Offset(0, 3),
                            color: Colors.black12,
                            blurRadius: 5)
                      ]),
                ),
                SizedBox(height: ScreenSize.fSize_30()),
                controllercontainer.getcontainer(() {
                  controller.showbuttonad(context, '/Home', '/Get_start', "");
                }, 'Get Started'),
                SizedBox(height: ScreenSize.fSize_30()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    controllershare.getshare(() {
                      controller.showbuttonad(
                          context, '/In_App_Privacy', '/Get_start', '');
                    }, Colors.green[100], "asset/image/Icon/privacy.png",
                        'Privacy'),
                    controllershare.getshare(_shareURL, Colors.blue[100],
                        "asset/image/Icon/share.png", 'Share'),
                    controllershare.getshare(_shareURL, Colors.orange[100],
                        "asset/image/Icon/rate.png", 'Rate'),
                  ],
                ),
                SizedBox(height: ScreenSize.fSize_120()),
              ]),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  const Image(image: AssetImage('asset/image/Vector 1.png')),
                  Padding(
                    padding: EdgeInsets.only(
                        top: ScreenSize.horizontalBlockSize! * 5.7),
                    child:
                        const Image(image: AssetImage('asset/image/Group.png')),
                  ),
                ],
              ),
            ],
          )
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

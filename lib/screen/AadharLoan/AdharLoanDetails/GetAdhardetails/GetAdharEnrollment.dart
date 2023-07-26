import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/ad_controller/google_ads.dart';
import 'package:adhar_loan_2/ad_controller/main_ad_controller.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../media/qury.dart';

class GetAdharEnrollment extends StatefulWidget {
  const GetAdharEnrollment({super.key});

  @override
  State<GetAdharEnrollment> createState() => _GetAdharEnrollmentState();
}

class _GetAdharEnrollmentState extends State<GetAdharEnrollment> {
  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/GetAdharEnrollment', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('Enrollment Center', () {
          backbuttoncontroller.showBackbuttonad(
              context, '/GetAdharEnrollment', '');
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    native.getNT(
                        context, '/GetAdharEnrollment', 'listTileMedium'),
                    Padding(
                        padding: const EdgeInsets.all(15),
                        child: controllerwhitelist.get(Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(9),
                              child: Text(
                                "Locate an Enrollment/Update Center Near You",
                                textAlign: TextAlign.start,
                                style: GoogleFonts.k2d(
                                    color: Colors.black,
                                    fontSize: ScreenSize.fSize_17(),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ))),
                    Padding(
                      padding: EdgeInsets.only(
                          left: ScreenSize.fSize_25(),
                          top: ScreenSize.fSize_10()),
                      child: Text(
                        'Search for a nearest enrollment center by selecting any of the following given mode',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.k2d(
                            color: const Color(0xFF7C90A7),
                            fontSize: ScreenSize.fSize_16(),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: ScreenSize.fSize_23(),
                          top: ScreenSize.fSize_10()),
                      child: Text(
                        'Search By',
                        style: GoogleFonts.k2d(
                            color: const Color(0xff152C70),
                            fontWeight: FontWeight.w700,
                            fontSize: ScreenSize.fSize_18()),
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_12()),
                    controllerwhitmini.getText('State', () {
                      controller.showbuttonad(
                          context,
                          '/Adhar_Veb_view',
                          '/GetAdharEnrollment',
                          "https://appointments.uidai.gov.in/EACenterSearch.aspx?value=1");
                    }),
                    SizedBox(height: ScreenSize.fSize_16()),
                    controllerwhitmini.getText('Postel (pin) Code', () {
                      controller.showbuttonad(
                          context,
                          '/Adhar_Veb_view',
                          '/GetAdharEnrollment',
                          "https://appointments.uidai.gov.in/EACenterSearch.aspx?value=2");
                    }),
                    SizedBox(height: ScreenSize.fSize_16()),
                    controllerwhitmini.getText('Search Box', () {
                      controller.showbuttonad(
                          context,
                          '/Adhar_Veb_view',
                          '/GetAdharEnrollment',
                          "https://appointments.uidai.gov.in/EACenterSearch.aspx?value=3");
                    }),
                    SizedBox(height: ScreenSize.fSize_80()),
                  ],
                ),
              ),
              banner.getBN('/GetAdharEnrollment')
            ],
          ),
        ),
      ),
    );
  }
}

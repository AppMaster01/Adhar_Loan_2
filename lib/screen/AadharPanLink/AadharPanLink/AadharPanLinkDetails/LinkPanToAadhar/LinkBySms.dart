import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/ad_controller/google_ads.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:adhar_loan_2/media/qury.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkBySms extends StatefulWidget {
  const LinkBySms({super.key});

  @override
  State<LinkBySms> createState() => _LinkBySmsState();
}

class _LinkBySmsState extends State<LinkBySms> {
  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(context, '/LinkBySms', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('${abc[0]}', () {
          backbuttoncontroller.showBackbuttonad(context, '/LinkBySms', '');
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
                child: Column(
                  children: [
                    controllerlinkcopy.getText(
                        'https://www.bajajfinserv.in/instant-personal-loan-on-aadhar-card'),
                    Padding(
                        padding: const EdgeInsets.all(15),
                        child: controllerwhitelist.get(Column(
                          children: [
                            SizedBox(height: ScreenSize.fSize_15()),
                            controllerdiscripText
                                .getText("""${abc[1]}""", FontWeight.w700),
                            SizedBox(height: ScreenSize.fSize_10()),
                          ],
                        ))),
                    SizedBox(height: ScreenSize.fSize_80()),
                  ],
                ),
              ),
              banner.getBN('/LinkBySms')
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/ad_controller/google_ads.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:adhar_loan_2/media/qury.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AadharServiceDetails extends StatefulWidget {
  const AadharServiceDetails({super.key});

  @override
  State<AadharServiceDetails> createState() => _AadharServiceDetailsState();
}

class _AadharServiceDetailsState extends State<AadharServiceDetails> {
  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/AadharServiceDetails', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('${abc[2]}', () {
          backbuttoncontroller.showBackbuttonad(
              context, '/AadharServiceDetails', '');
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
                    controllerlinkcopy.getText("${abc[0]}"),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: controllerwhitelist.get(Column(
                        children: [
                          SizedBox(height: ScreenSize.fSize_15()),
                          controllerdiscripText
                              .getText("""${abc[1]}""", FontWeight.w600)
                        ],
                      )),
                    )
                  ],
                ),
              ),
              banner.getBN('/AadharServiceDetails')
            ],
          ),
        ),
      ),
    );
  }
}

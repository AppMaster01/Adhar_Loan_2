// ignore_for_file: deprecated_member_use, avoid_print

import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/ad_controller/google_ads.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

class BankDetails extends StatefulWidget {
  const BankDetails({super.key});

  @override
  State<BankDetails> createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {
  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>  backbuttoncontroller.showBackbuttonad(context, '/BankDetails', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('Bank Info', () {
          backbuttoncontroller.showBackbuttonad(context, '/BankDetails', '');
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
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: image.value.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return controllerbankdetails.get(
                            const Color(0xFFE0E7FF),
                            const Color(0xFFE0E7FF),
                            image.value[index],
                            text.value[index],
                            "${abc[index]}", () {
                          Share.share('${text.value[index]}: ${abc[index]}');
                        });
                      },
                    ),
                  )
                ]),
              ),
              banner.getBN('/BankDetails')
            ],
          ),
        ),
      ),
    );
  }

  var text = ["Balance Check", "Mini Statement", "Customer Care"].obs;
  var image = [
    "asset/image/Icon/Balance Check.png",
    "asset/image/Icon/Mini Statement.png",
    "asset/image/Icon/Customer Care.png",
  ].obs;
}

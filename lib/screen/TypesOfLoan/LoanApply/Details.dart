import 'package:adhar_loan_2/ad_controller/main_ad_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../ad_controller/back_ad_controller.dart';
import '../../../ad_controller/google_ads.dart';
import '../../../controller/widget_controller.dart';
import '../../../media/qury.dart';

class LoanApply extends StatefulWidget {
  const LoanApply({super.key});

  @override
  State<LoanApply> createState() => _LoanApplyState();
}

class _LoanApplyState extends State<LoanApply> {
  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>backbuttoncontroller.showBackbuttonad(context, '/LoanApply', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('${abc[0]}', () {
          backbuttoncontroller.showBackbuttonad(context, '/LoanApply', '');
        }),
        body: Container(
            height: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffBEDFF3), Color(0xffCFDAF8)])),
            child: Stack(
              children: [
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      controllercontainer.getcontainer(() {
                        controller.showbuttonad(
                            context, '/ApplyLoanForm1', '/LoanApply', '');
                      }, 'Apply Now'),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: controllerwhitelist.get(Column(
                          children: [
                            SizedBox(height: ScreenSize.fSize_20()),
                            controllerdiscrip.getText("""${abc[1]}"""),
                            SizedBox(height: ScreenSize.fSize_20()),
                          ],
                        )),
                      ),
                    ],
                  ),
                ),
                banner.getBN('/LoanApply')
              ],
            )),
      ),
    );
  }
}

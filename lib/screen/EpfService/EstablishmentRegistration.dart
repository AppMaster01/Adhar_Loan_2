import 'package:adhar_loan_2/ad_controller/main_ad_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../ad_controller/back_ad_controller.dart';
import '../../../ad_controller/google_ads.dart';
import '../../../controller/widget_controller.dart';
import '../../../media/qury.dart';

class EstablishmentRegistration extends StatefulWidget {
  const EstablishmentRegistration({super.key});

  @override
  State<EstablishmentRegistration> createState() =>
      _EstablishmentRegistrationState();
}

class _EstablishmentRegistrationState extends State<EstablishmentRegistration> {
  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/EstablishmentRegistration', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('${abc}', () {
          backbuttoncontroller.showBackbuttonad(
              context, '/EstablishmentRegistration', '');
        }),
        body: Container(
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffBEDFF3), Color(0xffCFDAF8)])),
            child: Stack(
              children: [
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
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
                      SizedBox(height: ScreenSize.fSize_80()),
                    ],
                  ),
                ),
                banner.getBN('/EstablishmentRegistration')
              ],
            )),
      ),
    );
  }
}

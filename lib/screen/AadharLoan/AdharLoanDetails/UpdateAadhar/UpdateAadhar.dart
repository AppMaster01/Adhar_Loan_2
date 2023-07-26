// ignore_for_file: unnecessary_string_escapes

import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/ad_controller/main_ad_controller.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:flutter/material.dart';

import '../../../../ad_controller/google_ads.dart';

class UpdateAadhar extends StatefulWidget {
  const UpdateAadhar({super.key});

  @override
  State<UpdateAadhar> createState() => _UpdateAadharState();
}

class _UpdateAadharState extends State<UpdateAadhar> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(context, '/UpdateAadhar', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar("Update Aadhar", () {
          backbuttoncontroller.showBackbuttonad(context, '/UpdateAadhar', '');
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
                    children: [
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: text.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return controllerselectColorchange1.getselect(() {
                            controller.showbuttonad(context, '/${page[index]}',
                                '/UpdateAadhar', [link[index],discrip[index],text[index]]);
                          }, text[index]);
                        },
                      ),
                    ],
                  ),
                ),
                banner.getBN('/UpdateAadhar')
              ],
            )),
      ),
    );
  }

  List discrip = [
    "",
    """Check if your Aadhaar is generated. In case yourhave or updated updated at an Enrolment/Update center ...
Check the status of your Aadhaar PVC card request.""",
    """You can update your Address online in Self Service
Update Portal (SSUP).
For other details updates such as Demographic details (Name, Address, DoB, Gender, Mobile Number, Email) as well as Biometrics (Finger Prints, Iris & Photograph) in Aadhaar you will have to visit Permanent Enrolment Center.""",
    """Click on Login button to explore online demographics update service, Aadhaar PVC card ordering & tracking, and more value-added services offered by UIDAI. Your mobile number is required to be registered with the aadhaar to login.""",
    """Check if your Aadhaar is generated or updated (In case you have updated at an Enrolment/Update center).
¡" + |"
\" + \"You will require EID (Enrolment ID) to check your Aadhaar Status. The EID is displayed on the top of your enrolment/update acknowledgement slip and contains 14 digit enrolment number (1234/12345/12345) and the 14 digit date and time (dd/mm/yyyy hh:mm:ss) of enrolment. These 28 digits together form your Enrolment ID (EID).
¡" + |"
\* + l'In case if you lost EID you can retrieve lost or forgotten EID by your registered mobile number.""",
    """UIDAl is mandated to issue an easily verifiable 12 digit random number as Unique Identity""",
  ];
  List link = [
    "",
    "https://resident.uidai.gov.in/check-aadhaar",
    "https://resident.uidai.gov.in/lost-uideid",
    "https://resident.uidai.gov.in/aadhaar-updatehistory",
    "https://ssup.uidai.gov.in/ssupAddressPin/pinGenerate.html",
    "https://resident.uidai.gov.in/verify-email-mobile",
  ];

  List page = [
    "UpdateDetails",
    "UpdateAadharDetails",
    "UpdateAadharDetails",
    "UpdateAadharDetails",
    "UpdateAadharDetails",
    "UpdateAadharDetails",
  ];

  List text = [
    'Update Your Aadhar an Enrollment/Update Center',
    'Check Aadhar update Status',
    'Update Your Address Online',
    "Address Validation Letter",
    'Check Address Update Status',
    'Aadhar Update History',
  ];
}

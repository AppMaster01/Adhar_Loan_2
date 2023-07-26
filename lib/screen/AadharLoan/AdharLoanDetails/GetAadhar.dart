import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/ad_controller/google_ads.dart';
import 'package:adhar_loan_2/ad_controller/main_ad_controller.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:flutter/material.dart';

class GetAadhar extends StatefulWidget {
  const GetAadhar({super.key});

  @override
  State<GetAadhar> createState() => _GetAadharState();
}

class _GetAadharState extends State<GetAadhar> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(context, '/GetAadhar', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('GetAadhar', () {
          backbuttoncontroller.showBackbuttonad(context, '/GetAadhar', '');
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
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: text.length,
                      itemBuilder: (context, index) {
                        return controllerselectColorchange1.getselect(() {
                          controller.showbuttonad(context, '/${page[index]}',
                              '/GetAadhar', [text[index], details[index]]);
                        }, '${text[index]}');
                      },
                    )
                  ],
                ),
              ),
              banner.getBN('/GetAadhar')
            ],
          ),
        ),
      ),
    );
  }

  List page = [
    "GetAdharEnrollment",
    "BookAnAppointment",
    "CheckAadharStatus",
    "DownloadEAadhar",
    "Retrieve_Lost_or_Forgotten",
    "Retrieve_Lost_or_Forgotten",
    "Retrieve_Lost_or_Forgotten",
  ];

  List text = [
    'Locate an Enrollment Center',
    'Book an Appointment (BETA)',
    'Check Aadhar Status',
    'Download E-Aadhar',
    'Retrieve Lost or Forgotten EID/UID',
    'Order Aadhar Reprint',
    'Check Aadhar Reprint Status',
  ];
  List details = [
    "",
    "",
    "",
    "",
    """Yes, In case your mobile number is registered in Aadhaar, you can find your Enrolment number (EID) or Aadhaar (UID) by clicking on "Retrieve Lost UID/EÍD" tab under Section Aadhaar enrolment on uidai.gov.in website or https://resident.uidai.gov.in/lost-uideid.""",
    """Step 1: First, visit the official UIDAl website, and tap on
"My Aadhaar."
Step 2: You then need to click on the 'Order Aadhaar
Reprint' option.
Step 3: After that, you will be asked to enter your
12-digit Aadhaar number.""",
    """Check if your Aadhaar is generated. In case yourhave or updated updated at an Enrolment/Update center ...
Check the status of your Aadhaar PVC card request.""",
  ];
}

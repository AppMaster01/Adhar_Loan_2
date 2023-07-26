import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:flutter/material.dart';

import '../../../../../ad_controller/google_ads.dart';
import '../../../../../ad_controller/main_ad_controller.dart';
import '../../../../../media/qury.dart';

class LinkPanToAadhar extends StatefulWidget {
  const LinkPanToAadhar({super.key});

  @override
  State<LinkPanToAadhar> createState() => _LinkPanToAadharState();
}

class _LinkPanToAadharState extends State<LinkPanToAadhar> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>backbuttoncontroller.showBackbuttonad(context, '/LinkPanToAadhar', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('Link Pan to Aadhar', () {
          backbuttoncontroller.showBackbuttonad(context, '/LinkPanToAadhar', '');
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: text.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: () {
                                controller.showbuttonad(context, '/LinkBySms',
                                    '/AadharPanLink', [text[index],discirp[index]]);
                              },
                              child: controllerwhitecontainr2.get(
                                  const Color(0xFFE0E7FF),
                                  const Color(0xFFE0E7FF),
                                  "asset/image/Icon/link.png",
                                  text[index]));
                        },
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_100()),
                  ],
                ),
              ),
              banner.getBN('/LinkPanToAadhar')
            ],
          ),
        ),
      ),
    );
  }
  List discirp = [
    """Link By SMS 

 Step 1: Type a message in the format UIDPAN.
 Step 2: Send the message to 56161 or 567678 from your registered mobile number.
 Step 3: You will get a confirmation message about linking your aadhar with PAN.""",
    """
Link Aadhar With PAN 

 You can link your PAN with Aadhaar by following process:

a) Open the Income Tax e-filing portal - https://incometaxindiaefiling.gov.in/

b) Register on it (if not already done). Your PAN (Permanent Account Number) will be your user id.

c) Log in by entering the User ID, password and date of birth.

d) A pop up window will appear, prompting you to link your PAN with Aadhaar. If not, go to ‘Profile Settings’ on Menu bar and click on ‘Link Aadhaar’.

e) Details such as name date of birth and gender will already be mentioned as per the PAN details.

f) Verify the PAN details on screen with the ones mentioned on your Aadhaar. Pls. note that if there is a mismatch, you need to get the same corrected in either of the documents.

g) If the details match, enter your Aadhaar number and click on the “link now” button.

h) A pop-up message will inform you that your Aadhaar has been successfully linked to your PAN

i) You may also visit https://www.utiitsl.com/ OR https://www.egov-nsdl.co.in/ to link your PAN and Aadhaar.""",
    """Check Link Status Check your Aadhaar and Bank Account Linking Status in NPCI mapper.
""",
  ];
  List text = [
    'Link By SMS',
    'Link Aadhar with Pan',
    'Check Link Status',
  ];
}

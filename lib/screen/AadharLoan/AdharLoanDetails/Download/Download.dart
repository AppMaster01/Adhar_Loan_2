// ignore_for_file: file_names

import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/ad_controller/main_ad_controller.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:adhar_loan_2/media/qury.dart';
import 'package:flutter/material.dart';

import '../../../../ad_controller/google_ads.dart';

class Download extends StatefulWidget {
  const Download({super.key});

  @override
  State<Download> createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(context, '/Download', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar("Aadhar Service", () {
          backbuttoncontroller.showBackbuttonad(context, '/Download', '');
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
                            controller.showbuttonad(
                                context, '/DownloadDetails', '/Download', [link[index],discrip[index],text[index]]);
                          }, text[index]);
                        },
                      ),
                      SizedBox(
                        height: ScreenSize.fSize_80(),
                      )
                    ],
                  ),
                ),
                banner.getBN('/Download')
              ],
            )),
      ),
    );
  }

  List link = [
    'https://uidai.gov.in/images/aadhaar_enrolment_correction_form_version_2.1.pdf',
    'https://uidai.gov.in/images/UpdateRequestFormV2.pdf',
    'https://uidai.gov.in/images/commdoc/valid_documents_list.pdf',
    'https://uidai.gov.in/14-english-uk/1018-aadhaar-as-identity-document.html',
    'https://uidai.gov.in/296-faqs/enrolment-update/aadhaar-enrolment-process/12324-does-the-online-downloaded-aadhaar-letter-have-same-validity-as-that-of-original-2.html#:~:text=Yes%2C%20online%20downloaded%20e%2DAadhaar,validity%20as%20that%20of%20original.',
    'https://uidai.gov.in/my-aadhaar/get-aadhaar.html',
  ];
  List discrip = [
    """Aadhaar Enrolment and Mandatory Biometric Update is free. No charges are applicable for Form. In case of Correction/ Update""",
    """Aadhaar Enrolment and Mandatory Biometric Update is free. No charges are applicable for Form. In case of Correction/ Update, provide your""",
    """
List of Supporting Document
1. Passport
2. PAN Card
3. Ration/ PDS Photo Card
4. Voter ID
5. Driving License
6. Government Photo ID Cards/ Service photo identity card
issued by PSU
7. NEGS Job Card
8. Photo ID issued by Recognized Educational
Institution
9. Arms License
10. Photo Bank ATM Card
11. Photo Credit Card
12. Pensioner Photo Card
""",
    """Aadhaar Enrolment.
Update of any Demographic Information in their Aadhaar - Name, Address, Gender, Date of Birth, Mobile number or Email Id.
Update of Biometric data in their Aadhaar - Photo, Fingerprints and Iris Scans.
Download & Print Aadhaar.""",
    """Downloaded Aadhaar (e-Aadhaar) is, therefore, as legally valid proof of identity under Section 4(3) of the Aadhaar Act, 2016 read together with Regulation 15 (1) of the Aadhaar (Enrolment and Update) Regulations, 2016, as printed version of Aadhaar Letter.""",
    """In order to enrol for Aadhaar for yourself or for your family member, you will be required to visit an Aadhaar Enrolment Center. In case your Demographic details (Name, Address, DoB, Gender, Mobile Number, Email)is not up-to-date in your Aadhaar, you can get the same updated by visiting an Aadhaar Enrolment Center. Aadhaar holders children who have turned
15) or others in need of updating Biometrcis details - Finger Prints, Iris & Photograph are required to visit an Enrolment center too. Please get valid Address proof documents.""",
  ];

  List text = [
    'Enrollment Form',
    'Aadhar Enrollment/Update Form',
    'List of Supporting Document',
    'Changes for various UIDAI service at aadhar kendra(PEC)',
    'Validity of downloaded Aadhar (e-aadhar) as proof idenity',
    'New Aadhar',
  ];
}

import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/ad_controller/main_ad_controller.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:adhar_loan_2/media/qury.dart';
import 'package:flutter/material.dart';

import '../../../../ad_controller/google_ads.dart';

class AboutAadhar extends StatefulWidget {
  const AboutAadhar({super.key});

  @override
  State<AboutAadhar> createState() => _AboutAadharState();
}

class _AboutAadharState extends State<AboutAadhar> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>backbuttoncontroller.showBackbuttonad(context, '/AboutAadhar', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar("Aadhar Service", () {
          backbuttoncontroller.showBackbuttonad(context, '/AboutAadhar', '');
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
                            controller.showbuttonad(context,
                                '/AboutAadharDetails', '/AboutAadhar', [link[index],descrip[index],text[index]]);
                          }, text[index]);
                        },
                      ),
                      SizedBox(
                        height: ScreenSize.fSize_80(),
                      )
                    ],
                  ),
                ),
                banner.getBN('/AboutAadhar')
              ],
            )),
      ),
    );
  }

  List descrip = [
    """Aadhaar number is a 12-digit random number issued by the UIDAI ( Authority ) to the residents of India after satisfying the verification process laid down by the Authority. Any individual, irrespective of age and gender, who is a resident of India, may voluntarily enrol to obtain Aadhaar number. Person willing to enrol has to provide minimal demographic and biometric information during the enrolment process which is totally free of cost. An individual needs to enrol for Aadhaar only once and after de-duplication only one Aadhaar shall be generated, as the uniqueness is achieved through the process of demographic and biometric de-duplication.""",
    """This is achieved through the process of demographic and biometric de-duplication. The de-duplication process compares the resident's demographic and biometric information, collected during the process of enrolment, with the records in the UIDAI database to verify if the resident is already in the database or not. An individual needs to enrol for Aadhaar only once and after de-duplication only one Aadhaar shall be generated. In case, the resident enrols more than once, the subsequent enrolments will be rejected.""",
    """Government of India as well as the State
Governments fund a number of social welfare schemes and programmes which are focused towards the poor and most vulnerable sections of the society.
Aadhaar and its platform offers a unique opportunity to the government to streamline their delivery mechanism under the welfare schemes, thereby ensuring transparency and efficiency. Use of Aadhaar as an identity document enables beneficiaries to get their entitlements directly in a convenient and seamless manner by obviating the need to produce multiple documents to prove one's identity.""",
    """The Aadhaar enrolment process includes visiting Enrolment Centre, filling the enrolment form, getting demographic and biometric data captured, submitting proof of Identity and address documents, before collecting acknowledgement slip containing Enrolment ID. The highlights of Aadhaar enrolment are:
Aadhaar enrolment is free of cost.
You can go to any authorized Aadhaar enrolment centre anywhere in India with your proof of identity and proof of address documents""",
    """Aadhaar Generation involves process like quality check, packet validation, demographic and biometric de-duplication etc. Aadhaar is generated successfully only if:
Quality of enrolment data meets prescribed standards laid down by UIDAI.
The enrolment packet passes all the validations done in CIDR
No Demographic/Biometric duplicate is found
If any of the above conditions is not satisfied, then Aadhaar number will not be issued and the enrolment gets rejected. The processes leading to Aadhaar generation are explained below.""",
    """If you have not registered your Mobile number while enrolling for Aadhaar, you are required to visit a Permanent Enrolment Centre to get it registered.
Enabling Aadhaar for various services like
Government & Non-Government Services, Subsidy Benefits, Pensions, Scholarships, Social Benefits, Banking services, Insurance services, Taxation services, Education, Employment, Healthcare etc., makes it essential to ensure that Aadhaar data of the resident stored in the CID is accurate and up-to-date.""",
    """Absolutely false. UIDAI database has only minimal information that you give at the time of enrolment or update. This includes your name, address, gender, date of birth, ten finger prints, two Iris scans, facial photograph, mobile number (optional) and email ID (optional).
Rest assured, UIDAI does not have your information about bank accounts, shares, mutual funds, financial and property details, health records, family, caste, religion, education, etc and will never have this information in its database.
In fact, Section 32(3) of the Aadhaar Act 2016 specifically prohibits UIDAI from controlling, collecting, keeping or maintaining any information about the purpose of authentication either by itself or through any entity. Aadhaar is an identiffer, not a profiling tool.""",
  ];
  List link = [
    "https://www.uidai.gov.in/16-english-uk/aapka-aadhaar/14-what-is-aadhaar.html#:~:text=The%20number%20serves%20as%20a,UIDAI%20website%20are%20equally%20valid.",
    "https://uidai.gov.in/my-aadhaar/about-your-aadhaar/features-of-aadhaar.html",
    "https://uidai.gov.in/contact-support/have-any-question/288-faqs/your-aadhaar/use-of-aadhaar.html#:~:text=Aadhaar%20means%20foundation%2C%20therefore%20it,benefits%20offered%20by%20the%20system.",
    "https://uidai.gov.in/my-aadhaar/about-your-aadhaar/aadhaar-enrolment.html",
    "https://uidai.gov.in/my-aadhaar/about-your-aadhaar/aadhaar-generation.html",
    "https://uidai.gov.in/my-aadhaar/about-your-aadhaar/updating-data-on-aadhaar.html",
    "https://uidai.gov.in/my-aadhaar/about-your-aadhaar/security-in-uidai-system.html",
  ];

  List text = [
    'What is Aadhaar?',
    'Features of Aadhar?',
    'Usage of Aadhar',
    'Aadhar Enrollment',
    'Aadhar Generation',
    'Updating Data on Aadhar',
    'Security in UIDAI System',
  ];
}

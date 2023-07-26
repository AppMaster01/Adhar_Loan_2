import 'package:adhar_loan_2/ad_controller/google_ads.dart';
import 'package:adhar_loan_2/ad_controller/main_ad_controller.dart';
import 'package:adhar_loan_2/media/qury.dart';
import 'package:flutter/material.dart';

import '../../../../ad_controller/back_ad_controller.dart';
import '../../../../controller/widget_controller.dart';

class ImportantQuestion extends StatefulWidget {
  const ImportantQuestion({super.key});

  @override
  State<ImportantQuestion> createState() => _ImportantQuestionState();
}

class _ImportantQuestionState extends State<ImportantQuestion> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/ImportantQuestion', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('Important Question', () {
          backbuttoncontroller.showBackbuttonad(
              context, '/ImportantQuestion', '');
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
                        itemCount: text.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return controllerselectColorchangebig.getselect(() {
                            controller.showbuttonad(
                                context,
                                '/ImportantQuestionDetails',
                                '/ImportantQuestion',
                                importantdetail[index]);
                          }, text[index]);
                        },
                      ),
                    ),
                    SizedBox(
                      height: ScreenSize.fSize_80(),
                    )
                  ],
                ),
              ),
              banner.getBN('/ImportantQuestion')
            ],
          ),
        ),
      ),
    );
  }

  List text = [
    """if dont't fall into the taxable bracket, do i still have to get an aadhar card or have it linked to mu PAN?""",
    """Do NRIIs residing in india have to link thier PAN as well?""",
    """Is it mandatory to create an account with the deparnebt website?""",
    """I used to live tin India but settled aboroad. I plan on returning to India. Do I need to apply for an Adhaar Card or am I exempted from this rule ?""",
    """How Long is the OTP sent by the AAdhar database valide for?""",
    """How can I change the mobile number that is registered with Adhaar?""",
    """Can I de-link my Adhaar number ?""",
    """Do I have to submite any documentary proof to link my PAN and Adhaar Card""",
    """What are details I fave to check when linking my PAN with my Adhaar Card?""",
    """How do I make changes to an Aadhaar Number that i have filed?""",
  ];

  List importantdetail = [
    """ANSWER 

Yes, it is advisable that you apply for an Aadhaar card and have it linked with your PAN. Aadhar is now necessary to avail most government benefits and so it is advisable to apply for it and also get it linked with PAN to ensure that your PAN is valid.""",
    """ANSWER 

The requirement to quote Aadhaar for filing income tax returns and for making an application for allotment of PAN with effect from July 1, 2017 does not apply to non­resident Indians [NRIs].""",
    """ANSWER 

No, it is not necessary to have an account with the department website. There is a direct link that is available which you can use to link your PAN and Aadhaar Card.
""",
    """ANSWER 

If you plan on staying in the country for more than 6 months or 182 days, you will have to apply for an Aadhaar card when you reach India.""",
    """ANSWER 

The Aadhaar OTP is valid for a total of 15 minutes from the time it was generated.""",
    """ANSWER 

You can get in touch with the UIDAI helpdesk by email at authsupport@uidai.gov.in or you can contact their toll-free number which is 1800 300 1947.
""",
    """ANSWER 

No. There is no option that is available to de-link your Aadhaar number once it has been updated on the e-filing page.""",
    """ANSWER 

No, you are not required to submit any documents when linking your Aadhaar to your PAN card. You have to check if the PAN information mentioned on the website matches your Aadhaar card and then apply for them to be linked.""",
    """ANSWER 

When linking your PAN with your Aadhaar card, you have to make sure that your name, date of birth and gender as displayed on the income tax website matches with the details on your Aadhaar card.""",
    """ANSWER 

You can get in touch with the UIDAI helpdesk by email at authsupport@uidai.gov.in or you can contact their toll-free number which is 1800 300 1947.""",
  ];
}

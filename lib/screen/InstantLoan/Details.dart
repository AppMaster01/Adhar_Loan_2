// ignore_for_file: unnecessary_brace_in_string_interps, file_names

import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/ad_controller/google_ads.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:adhar_loan_2/media/qury.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'detailswigetcontroller.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  var abc = Get.arguments;
  @override
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(context, '/Details', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('${abc}', () {
          backbuttoncontroller.showBackbuttonad(context, '/Details', '');
        }),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient:
                  LinearGradient(colors: [Color(0xffBEDFF3), Color(0xffCFDAF8)])),
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    abc == "Active UNA"
                        ? Padding(
                            padding: const EdgeInsets.all(15),
                            child: controlleractivate.getText())
                        : abc == "Balance Online"
                            ? controllercopylink.getText(
                                """Check Your PF Balance Without Internet Through""",
                                """EPFOHO UAN ENG to 7738299899""")
                            : abc == "Pensioners "
                                ? Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: controllerwhitelist.get(Column(
                                      children: [
                                        SizedBox(height: ScreenSize.fSize_20()),
                                        controllerdiscrip.getText(
                                          """EPFO introduced a new system to facilitate online submission of transfer claims by Members with an objective to make the transfer process transparent, efficient and comfortable for your employees.""",
                                        ),
                                        SizedBox(height: ScreenSize.fSize_15()),
                                        controllerdiscrip.getText(
                                          """You are urged to bring this facility to the notice of all your employees which is available on EPFOs Member portal.""",
                                        ),
                                        SizedBox(height: ScreenSize.fSize_15()),
                                        controllerdiscrip.getText(
                                          """A member has an option to submit his claim either through his present employer or the previous one.""",
                                        ),
                                        SizedBox(height: ScreenSize.fSize_15()),
                                        controllerdiscrip.getText(
                                          """You can see all such claim requests with ease, verify/correct member details, approve and submit the requests online through this portal.""",
                                        ),
                                        SizedBox(height: ScreenSize.fSize_15()),
                                        controllerdiscrip.getText(
                                            """For online submission of the claims, the Digital signature (Class II or above) of the authorized person is required."""),
                                        SizedBox(height: ScreenSize.fSize_20()),
                                      ],
                                    )))
                                : abc == "TRRN Status"
                                    ? controllerdetails1.getText(Column(
                                        children: [
                                          SizedBox(height: ScreenSize.fSize_20()),
                                          controllerdiscrip.getText(
                                              """Visit the EPF Portal and click on ‘Our Services’ on the dashboard and click on For Employees."""),
                                          SizedBox(height: ScreenSize.fSize_15()),
                                          controllerdiscrip.getText(
                                              """ Click on Member Passbook"""),
                                          SizedBox(height: ScreenSize.fSize_15()),
                                          controllerdiscrip.getText(
                                              """The following details must be populated to log in to access the account."""),
                                          SizedBox(height: ScreenSize.fSize_20()),
                                        ],
                                      ))
                                    : abc == "Claim "
                                        ? controllerclime.getText()
                                        : abc == "Balance Call"
                                            ? controllercopylink.getText(
                                                """Check Your PF Balance Without Internet Through""",
                                                """+919900990099""")
                                            : abc == "Balance SMS"
                                                ? controllercopylink.getText(
                                                    """Check Your PF Balance Without Internet Through""",
                                                    """EPFOHO UAN ENG to 7738299899""")
                                                : abc == "FAQs "
                                                    ? controllerdetails1
                                                        .getText(Column(
                                                        children: [
                                                          SizedBox(
                                                              height: ScreenSize
                                                                  .fSize_20()),
                                                          controllerdiscrip
                                                              .getText(
                                                            """EPFO Recruitment 2019 Free Job alert for both Fresher and Experienced Candidates updated on March 12, 2019.""",
                                                          ),
                                                          SizedBox(
                                                              height: ScreenSize
                                                                  .fSize_15()),
                                                          controllerdiscrip
                                                              .getText(
                                                            """Get Direct Official Link for applying EPFO Recruitment 2019 along with current EPFO Recruitment official Notification 2019 here.""",
                                                          ),
                                                          SizedBox(
                                                              height: ScreenSize
                                                                  .fSize_15()),
                                                          controllerdiscrip.getText(
                                                              """Find all recent EPFO Vacancy 2019 across India and check all latest EPFO 2019 job openings instantly here, Know upcoming EPFO Recruitment 2019 immediately here"""),
                                                          SizedBox(
                                                              height: ScreenSize
                                                                  .fSize_20()),
                                                        ],
                                                      ))
                                                    : abc == "News "
                                                        ? Padding(padding: const EdgeInsets.all(15),child: controllerwhitelist
                        .get(Column(
                      children: [
                        SizedBox(
                            height: ScreenSize
                                .fSize_20()),
                        controllerdiscrip
                            .getText(
                          """View all Tender Notifications issued by Employees Provident Fund Organisation.""",
                        ),
                        SizedBox(
                            height: ScreenSize
                                .fSize_15()),
                        controllerdiscrip
                            .getText(
                          """Search live eProcurement business opportunities available in EPFO Tenders section.""",
                        ),
                        SizedBox(
                            height: ScreenSize
                                .fSize_15()),
                        controllerdiscrip
                            .getText(
                          """Employees Provident Fund Organisation Tenders are further filtered by Bid Submission Date, Tender Value, Project Location & Product Category.""",
                        ),
                        SizedBox(
                            height: ScreenSize
                                .fSize_15()),
                        controllerdiscrip
                            .getText(
                          """Get email alert on Tenders from Employees Provident Fund Organisation - (EPFO).""",
                        ),
                        SizedBox(
                            height: ScreenSize
                                .fSize_20()),
                      ],
                    )),)
                                                        : abc == "Helpline "
                                                            ? controllercopylink.getText(
                                                                """Helpline Number Solve Your Query Related EPF by just Giving a Call on Toll Free Number""",
                                                                """919900990099""")
                                                            : abc ==
                                                                    "Locate Office"
                                                                ? controllerdetails1.getText(Column(
                                                                    children: [
                                                                      SizedBox(
                                                                          height:
                                                                              ScreenSize.fSize_20()),
                                                                      controllerdiscrip
                                                                          .getText(
                                                                              """EPF 24×7 Customer Care Number & Toll Free Helpline- Employee Provident Fund"""),
                                                                      SizedBox(
                                                                          height:
                                                                              ScreenSize.fSize_15()),
                                                                      controllerdiscrip
                                                                          .getText(
                                                                              """And Head Office Address List Are Blow Plz Click The Button."""),
                                                                      SizedBox(
                                                                          height:
                                                                              ScreenSize.fSize_20()),
                                                                    ],
                                                                  ))
                                                                : Container(),
                    SizedBox(height: ScreenSize.fSize_80()),
                  ],
                ),
              ),
              banner.getBN('/Details')
            ],
          ),
        ),
      ),
    );
  }
}

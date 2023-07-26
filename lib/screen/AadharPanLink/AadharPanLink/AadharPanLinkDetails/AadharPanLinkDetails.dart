// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../ad_controller/google_ads.dart';
import '../../../../media/qury.dart';

class AadharPanLinkDetails extends StatefulWidget {
  const AadharPanLinkDetails({super.key});

  @override
  State<AadharPanLinkDetails> createState() => _AadharPanLinkDetailsState();
}

class _AadharPanLinkDetailsState extends State<AadharPanLinkDetails> {
  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/AadharPanLinkDetails', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('${abc}', () {
          backbuttoncontroller.showBackbuttonad(
              context, '/AadharPanLinkDetails', '');
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
                        padding: const EdgeInsets.all(15),
                        child: controllerwhitelist.get(abc == "Aadhar Pan Info"
                            ?Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              SizedBox(height: ScreenSize.fSize_20()),
                              controllerdiscrip.getText(
                                  """What is Aadharcard ? 

 Aadhaar is a 12 - digit unique identification number issued by the Indian government to every individual resident of India . The Unique Identification Authority of India ( UDAI ) , which functions under the Planning Commission of India , is responsible for managing Aadhaar numbers and Aadhaar identification cards . The Aadhaar project was initiated as an attempt towards having a single , unique identification document or number that would capture all the details , including demographic and biometric information , of every resident Indian individual . Currently there are a plethora of identity documents in India including passports , permanent account numbers ( PANS ) , driving licenses and ration cards . The Aadhaar card / UID will not replace these identification documents but can be used as the sole identification proof when applying for other things . It will also serve as the basis for Know Your Customer ( KYC ) norms used by banks , financial institutions , telecom firms and other businesses that maintain customer profiles . Aadhaar numbers will eventually serve as the basis for a database with which disadvantaged Indian residents can access services that have been denied to them due to lack of identification documents . A resident Indian can apply for the Aadhaar number and card by submitting the existing proof of identity ( passport ,PAN card , driving license , etc. ) and proof of address ( phone / power bill , bank statements etc. ) and by undergoing biometric profiling ( fingerprints and iris scan ) at any Aadhaar center . 

 What is Pancard ?

 Permanent Account Number or PAN is a means of identifying various taxpayers in the country . PAN is a 10 - digit unique identification alphanumeric number ( containing both alphabets and numbers ) assigned to Indians , mostly to those who pay tax . The PAN system of identification is a computer - based system that assigns unique identification number to every Indian tax paying entity . Through this method , all tax - related information for a person is recorded against a single PAN number which acts as the primary key for storage of information . This is shared across the country and hence no two people on tax paying entities can have the same PAN .
"""),
                              SizedBox(height: ScreenSize.fSize_20()),
                            ],
                          ),
                        )
                            : Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                  children: [
                                    SizedBox(height: ScreenSize.fSize_20()),
                                    controllerdiscrip.getText(
                                      """

Why Link Aadhar With Pan ? Both the PAN card as well as the Aadhaar card are unique identification cards that serve as proof of identity that are necessary for registration and verification purposes . The government has urged all entities to link their PAN cards with their Aadhaar cards . This is being done for the following purposes : Prevent Tax Evasion : By linking the Aadhaar and PAN cards , the government will be able to keep tabs on the taxable transactions of a particular individual or entity , whose identity and address will be verified by his Aadhaar card . This will effectively mean that every taxable transaction or activity will be recorded by the government . As a result , the government will already have a detailed record of all the financial transactions that would attract tax for each entity , making tax evasion a thing of the past . Multiple PAN Cards : Another reason for linking PAN with Aadhaar is to reduce the occurrence of individuals or entities applying for multiple PAN cards in an effort to defraud the government and avoid paying taxes . By applying for more than one PAN card , an entity can use one of the cards for a certain set of financial transactions and pay taxes applicable for those . Meanwhile , the other PAN card can be used for accounts or transactions that the entity wishes to conceal from the Income Tax department , thereby avoiding paying tax on them . By linking the PAN and Aadhaar card , the government will be able to link the identity of an entity through his / her Aadhaar card , and subsequently have details of all financial transactions made through the linked PAN card . If there are multiple PAN cards registered under the same name , the government will be able to identify the same and take corrective action ."""),
                                    SizedBox(height: ScreenSize.fSize_20()),
                                  ],
                                ),
                            ))),
                    SizedBox(height: ScreenSize.fSize_80()),
                  ],
                ),
              ),
              banner.getBN('/AadharPanLinkDetails')
            ],
          ),
        ),
      ),
    );
  }
}

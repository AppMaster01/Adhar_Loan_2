// ignore_for_file: invalid_use_of_protected_member, avoid_print

import 'dart:convert';
import 'package:adhar_loan_2/screen/AadharLoan/Aadhar_Loan.dart';
import 'package:adhar_loan_2/screen/AadharLoan/AdharLoanDetails/AadharService/AadharService.dart';
import 'package:adhar_loan_2/screen/AadharLoan/AdharLoanDetails/AadharService/Dtails.dart';
import 'package:adhar_loan_2/screen/AadharLoan/AdharLoanDetails/AboutAadhar/AboutAadhar.dart';
import 'package:adhar_loan_2/screen/AadharLoan/AdharLoanDetails/AboutAadhar/Details.dart';
import 'package:adhar_loan_2/screen/AadharLoan/AdharLoanDetails/Download/Download.dart';
import 'package:adhar_loan_2/screen/AadharLoan/AdharLoanDetails/Download/details.dart';
import 'package:adhar_loan_2/screen/AadharLoan/AdharLoanDetails/GetAadhar.dart';
import 'package:adhar_loan_2/screen/AadharLoan/AdharLoanDetails/GetAdhardetails/BookAnAppointment.dart';
import 'package:adhar_loan_2/screen/AadharLoan/AdharLoanDetails/GetAdhardetails/CheckAadharStatus.dart';
import 'package:adhar_loan_2/screen/AadharLoan/AdharLoanDetails/GetAdhardetails/DownloadEAadhar.dart';
import 'package:adhar_loan_2/screen/AadharLoan/AdharLoanDetails/GetAdhardetails/GetAdharEnrollment.dart';
import 'package:adhar_loan_2/screen/AadharLoan/AdharLoanDetails/GetAdhardetails/Retrieve%20Lost%20or%20Forgotten.dart';
import 'package:adhar_loan_2/screen/AadharLoan/AdharLoanDetails/UpdateAadhar/Details.dart';
import 'package:adhar_loan_2/screen/AadharLoan/AdharLoanDetails/UpdateAadhar/UpdateAadhar.dart';
import 'package:adhar_loan_2/screen/AadharLoan/AdharLoanDetails/UpdateAadhar/Enorllment.dart';
import 'package:adhar_loan_2/screen/AadharPanLink/AadharPanLink/AadharPanLink.dart';
import 'package:adhar_loan_2/screen/AadharPanLink/AadharPanLink/AadharPanLinkDetails/AadharPanLinkDetails.dart';
import 'package:adhar_loan_2/screen/AadharPanLink/AadharPanLink/AadharPanLinkDetails/ImportantQuestion.dart';
import 'package:adhar_loan_2/screen/AadharPanLink/AadharPanLink/AadharPanLinkDetails/ImportantQuestionDetails.dart';
import 'package:adhar_loan_2/screen/AadharPanLink/AadharPanLink/AadharPanLinkDetails/LinkPanToAadhar/LinkBySms.dart';
import 'package:adhar_loan_2/screen/AadharPanLink/AadharPanLink/AadharPanLinkDetails/LinkPanToAadhar/LinkPanToAadhar.dart';
import 'package:adhar_loan_2/screen/Aadhar_Loan_Guide/AadharLoanGuideDetail.dart';
import 'package:adhar_loan_2/screen/Aadhar_Loan_Guide/Loan_Guide.dart';
import 'package:adhar_loan_2/screen/AddressChange/AadharAddressChange.dart';
import 'package:adhar_loan_2/screen/AddressChange/VerifyAadharCardNumber.dart';
import 'package:adhar_loan_2/screen/Apply_Loan_Guide/Adhar_card/Adhar_Card.dart';
import 'package:adhar_loan_2/screen/Apply_Loan_Guide/Adhar_card/Adhar_card_Detail.dart';
import 'package:adhar_loan_2/screen/Apply_Loan_Guide/Pan_Card/Pan_Card.dart';
import 'package:adhar_loan_2/screen/Apply_Loan_Guide/Pan_Card/Pan_Card_Detail.dart';
import 'package:adhar_loan_2/screen/BankInfo/BankDetails.dart';
import 'package:adhar_loan_2/screen/BankInfo/BankInfo.dart';
import 'package:adhar_loan_2/screen/Calculator/EmiCalculator/EmiCalculator.dart';
import 'package:adhar_loan_2/screen/Calculator/GstCalculator/GstCalculator.dart';
import 'package:adhar_loan_2/screen/Calculator/SipCalculator/SipCalculator.dart';
import 'package:adhar_loan_2/screen/EpfService/EpfService.dart';
import 'package:adhar_loan_2/screen/EpfService/EstablishmentRegistration.dart';
import 'package:adhar_loan_2/screen/Get_start.dart';
import 'package:adhar_loan_2/screen/Home.dart';
import 'package:adhar_loan_2/screen/Apply_Loan_Guide/Apply_Loan_Guide.dart';
import 'package:adhar_loan_2/screen/InstantLoan/Details.dart';
import 'package:adhar_loan_2/screen/InstantLoan/InstantLoan.dart';
import 'package:adhar_loan_2/screen/InstantLoan/clime.dart';
import 'package:adhar_loan_2/screen/NearByMe/NearByMe.dart';
import 'package:adhar_loan_2/screen/TypesOfLoan/ApplyLoanForm/ApplyLoanForm1.dart';
import 'package:adhar_loan_2/screen/TypesOfLoan/ApplyLoanForm/ApplyLoanForm2.dart';
import 'package:adhar_loan_2/screen/TypesOfLoan/ApplyLoanForm/ApplyLoanForm3.dart';
import 'package:adhar_loan_2/screen/TypesOfLoan/ApplyLoanForm/ApplyLoanForm4.dart';
import 'package:adhar_loan_2/screen/TypesOfLoan/LoanApply/Details.dart';
import 'package:adhar_loan_2/screen/TypesOfLoan/LoanType.dart';
import 'package:adhar_loan_2/screen/splash_screen.dart';
import 'package:connectivity_service/enum/connectivity_service.dart';
import 'package:connectivity_service/enum/connectivity_status.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'controller/my_controller.dart';
import 'in_app_web/adhar_web_view.dart';
import 'in_app_web/in_app_web.dart';

final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
RxMap loan2 = {}.obs;

Future initConfig() async {
  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 1),
    minimumFetchInterval: const Duration(seconds: 10),
  ));
  await remoteConfig.fetchAndActivate();
}

AppOpenAd? appOpenAd;

loadAd() {
  AppOpenAd.load(
    adUnitId: loan2.value["appopen"],
    orientation: AppOpenAd.orientationPortrait,
    request: const AdManagerAdRequest(),
    adLoadCallback: AppOpenAdLoadCallback(
      onAdLoaded: (ad) {
        print("Ad Loadede.................................");
        appOpenAd = ad;
        ad.show();
      },
      onAdFailedToLoad: (error) {
        AppOpenAd.load(
          adUnitId: loan2.value["appopen"],
          orientation: AppOpenAd.orientationPortrait,
          request: const AdManagerAdRequest(),
          adLoadCallback: AppOpenAdLoadCallback(
            onAdLoaded: (ad) {
              print("Ad Loadede.................................");
              appOpenAd = ad;
              // isLoaded=true;
              ad.show();
            },
            onAdFailedToLoad: (error) {},
          ),
        );
      },
    ),
  );
}

AndroidNotificationChannel channel = const AndroidNotificationChannel(
    "Hello ", "Rohan",
    playSound: true, importance: Importance.high);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();
  tz.initializeTimeZones();
  MobileAds.instance.initialize();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  initConfig().whenComplete(() {
    loan2.value = json.decode(remoteConfig.getString('loan'));
    loadAd();
  });

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const Splash_screen(),
      '/GetStarted': (context) => const GetStarted(),
      '/Home': (context) => const Home(),
      '/ApplyLoanGuide': (context) => const ApplyLoanGuide(),
      '/PanCard': (context) => const PanCard(),
      '/PanCardDeatils': (context) => const PanCardDeatils(),
      '/AadharCard': (context) => const AadharCard(),
      '/AadharCard1': (context) => const AadharCard1(),
      '/AadharLoanGuide': (context) => const AadharLoanGuide(),
      '/AadharLoanGuideDetail': (context) => const AadharLoanGuideDetail(),
      '/LoanType': (context) => const LoanType(),
      '/LoanApply': (context) => const LoanApply(),
      '/ApplyLoanForm1': (context) => const ApplyLoanForm1(),
      '/ApplyLoanForm2': (context) => const ApplyLoanForm2(),
      '/ApplyLoanForm3': (context) => const ApplyLoanForm3(),
      '/ApplyLoanForm4': (context) => const ApplyLoanForm4(),
      '/InstantLoan': (context) => const InstantLoan(),
      '/Details': (context) => const Details(),
      '/clime': (context) => const clime(),
      '/AadharLoan': (context) => const AadharLoan(),
      '/GetAadhar': (context) => const GetAadhar(),
      '/GetAdharEnrollment': (context) => const GetAdharEnrollment(),
      '/BookAnAppointment': (context) => const BookAnAppointment(),
      '/CheckAadharStatus': (context) => const CheckAadharStatus(),
      '/DownloadEAadhar': (context) => const DownloadEAadhar(),
      '/Retrieve_Lost_or_Forgotten': (context) =>
          const Retrieve_Lost_or_Forgotten(),
      '/UpdateAadhar': (context) => const UpdateAadhar(),
      '/UpdateDetails': (context) => const UpdateDetails(),
      '/UpdateAadharDetails': (context) => const UpdateAadharDetails(),
      '/AadharService': (context) => const AadharService(),
      '/AadharServiceDetails': (context) => const AadharServiceDetails(),
      '/AboutAadhar': (context) => const AboutAadhar(),
      '/AboutAadharDetails': (context) => const AboutAadharDetails(),
      '/Download': (context) => const Download(),
      '/DownloadDetails': (context) => const DownloadDetails(),
      '/AadharAddressChange': (context) => const AadharAddressChange(),
      '/VerifyAadharCardNumber': (context) => const VerifyAadharCardNumber(),
      '/EpfService': (context) => const EpfService(),
      '/EstablishmentRegistration': (context) =>
          const EstablishmentRegistration(),
      '/AadharPanLink': (context) => const AadharPanLink(),
      '/AadharPanLinkDetails': (context) => const AadharPanLinkDetails(),
      '/LinkPanToAadhar': (context) => const LinkPanToAadhar(),
      '/ImportantQuestion': (context) => const ImportantQuestion(),
      '/ImportantQuestionDetails': (context) =>
          const ImportantQuestionDetails(),
      '/LinkBySms': (context) => const LinkBySms(),
      '/BankInfo': (context) => const BankInfo(),
      '/BankDetails': (context) => const BankDetails(),
      '/NearByMe': (context) => const NearByMe(),
      '/EmiCalculator': (context) => const EmiCalculator(),
      '/GstCalculator': (context) => const GstCalculator(),
      '/SipCalculator': (context) => const SipCalculator(),
      '/In_App_Privacy': (context) => const In_App_Privacy(),
      '/Adhar_Veb_view': (context) => const Adhar_Veb_view()
    },
  ));
}

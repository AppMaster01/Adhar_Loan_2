import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/ad_controller/google_ads.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:flutter/material.dart';
class BookAnAppointment extends StatefulWidget {
  const BookAnAppointment({super.key});

  @override
  State<BookAnAppointment> createState() => _BookAnAppointmentState();
}

class _BookAnAppointmentState extends State<BookAnAppointment> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/BookAnAppointment', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('Book An Appointment', () {
          backbuttoncontroller.showBackbuttonad(
              context, '/BookAnAppointment', '');
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
                  child: Column(children: [controllerlink.getText()])),
              banner.getBN('/BookAnAppointment')
            ],
          ),
        ),
      ),
    );
  }
}

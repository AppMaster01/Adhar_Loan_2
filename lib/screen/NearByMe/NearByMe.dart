// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../ad_controller/back_ad_controller.dart';
import '../../ad_controller/google_ads.dart';
import '../../controller/widget_controller.dart';
import '../../media/qury.dart';

class NearByMe extends StatefulWidget {
  const NearByMe({super.key});

  @override
  State<NearByMe> createState() => _NearByMeState();
}

class _NearByMeState extends State<NearByMe> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(context, '/NearByMe', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('Near By Me', () {
          backbuttoncontroller.showBackbuttonad(context, '/NearByMe', '');
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
                                launchATMUrl('Near ${text[index]}');
                              },
                              child: controllerwhitecontainr2.get(color[index],
                                  color[index], image[index], text[index]));
                        },
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_100()),
                  ],
                ),
              ),
              banner.getBN('/NearByMe')
            ],
          ),
        ),
      ),
    );
  }

  List image = [
    "asset/image/Icon/Near By Me/Art.png",
    "asset/image/Icon/Near By Me/ATM.png",
    "asset/image/Icon/Near By Me/Bank.png",
    "asset/image/Icon/Near By Me/Bars.png",
    "asset/image/Icon/Near By Me/Beauty Salon.png",
    "asset/image/Icon/Near By Me/Book Stores.png",
    "asset/image/Icon/Near By Me/Car Dealers.png",
    "asset/image/Icon/Near By Me/Clothes.png",
    "asset/image/Icon/Near By Me/Coffee.png",
    "asset/image/Icon/Near By Me/Convenience.png",
    "asset/image/Icon/Near By Me/Delivery.png",
    "asset/image/Icon/Near By Me/Dry Cleaning.png",
    "asset/image/Icon/Near By Me/Electronics.png",
    "asset/image/Icon/Near By Me/Gas.png",
    "asset/image/Icon/Near By Me/Gym.png",
    "asset/image/Icon/Near By Me/Groceries.png",
    "asset/image/Icon/Near By Me/Home & Garden.png",
    "asset/image/Icon/Near By Me/Hospital.png",
    "asset/image/Icon/Near By Me/Hotel.png",
    "asset/image/Icon/Near By Me/Jewelry.png",
    "asset/image/Icon/Near By Me/Libraries.png",
    "asset/image/Icon/Near By Me/Parking.png",
    "asset/image/Icon/Near By Me/Parks.png",
    "asset/image/Icon/Near By Me/Pharmacies.png",
    "asset/image/Icon/Near By Me/Restaurants.png",
    "asset/image/Icon/Near By Me/Shopping Center.png",
    "asset/image/Icon/Near By Me/Stadium.png",
  ];
  List color = [
    const Color(0xFFFEEBDA),
    const Color(0xFFFFD7D5),
    const Color(0xFFFDF1C9),
    const Color(0xFFCCF2E3),
    const Color(0xFFE8EBFC),
    const Color(0xFFFFEEFF),
    const Color(0xFFE2FBDB),
    const Color(0xFFF5E5FF),
    const Color(0xFFFEEBDA),
    const Color(0xFFFFD7D5),
    const Color(0xFFFDF1C9),
    const Color(0xFFCCF2E3),
    const Color(0xFFE8EBFC),
    const Color(0xFFFFEEFF),
    const Color(0xFFE2FBDB),
    const Color(0xFFE2FBDB),
    const Color(0xFFE2FBDB),
    const Color(0xFFFFD7D5),
    const Color(0xFFFFD7D5),
    const Color(0xFFFFD7D5),
    const Color(0xFFE8EBFC),
    const Color(0xFFFFEEFF),
    const Color(0xFFE2FBDB),
    const Color(0xFFF5E5FF),
    const Color(0xFFF5E5FF),
    const Color(0xFFFFD7D5),
    const Color(0xFFFDF1C9)
  ];
  List text = [
    "ATM",
    "Art",
    "Bars",
    "Banks",
    "Beauty Salons",
    "Book Stores",
    "Convenience",
    "Clothes",
    "Coffee",
    "Car Dealers",
    "Delivery",
    "Dry Cleaning",
    "Electronics",
    "Gas",
    "Gym",
    "Groceries",
    "Hospitals",
    "Hotels",
    "Home and Garden",
    "Jewelry",
    "Libraries",
    "Parking",
    "Pharmacies",
    "Parks",
    "Restaurants",
    "Stadium",
    "Shopping Centers",
  ];

  launchATMUrl(String lat) async {
    final url = 'https://www.google.com/maps/search/?api=1&query=$lat';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

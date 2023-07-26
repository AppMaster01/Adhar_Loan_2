// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:flutter/material.dart';

import '../../ad_controller/google_ads.dart';
import '../../ad_controller/main_ad_controller.dart';
import '../../media/qury.dart';
import 'model.dart';

class BankInfo extends StatefulWidget {
  const BankInfo({super.key});

  @override
  State<BankInfo> createState() => _BankInfoState();
}

class _BankInfoState extends State<BankInfo> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/BankInfo', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('Bank Info', () {
          backbuttoncontroller.showBackbuttonad(context, '/BankInfo', '');
        }),
        body: Stack(
          children: [
            FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString("asset/banklist.json"),
              builder: (context, snapshot) {
                var jsondata = json.decode(snapshot.data.toString());
                if (snapshot.hasData) {
                  return buildUsers(jsondata);
                } else {
                  return const Text("No data");
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildUsers(users) {
    Bank User = Bank.fromJson(users);
    return Container(
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
                    itemCount: User.data!.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            controller.showbuttonad(
                                context, '/BankDetails', '/BankInfo', [
                              User.data![index].balanceNumber,
                              User.data![index].miniNumber,
                              User.data![index].careNumber,
                            ]);
                          },
                          child: controllerbank.get(
                              const Color(0xFFE0E7FF),
                              const Color(0xFFE0E7FF),
                              User.data![index].bankName![0],
                              User.data![index].bankName));
                    },
                  ),
                ),
                SizedBox(height: ScreenSize.fSize_100()),
              ],
            ),
          ),
          banner.getBN('/BankInfo')
        ],
      ),
    );
  }
}

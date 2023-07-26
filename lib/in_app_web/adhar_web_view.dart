// ignore_for_file: camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

import '../ad_controller/back_ad_controller.dart';
import '../controller/widget_controller.dart';
import '../media/qury.dart';

class Adhar_Veb_view extends StatefulWidget {
  const Adhar_Veb_view({Key? key}) : super(key: key);

  @override
  State<Adhar_Veb_view> createState() => _Adhar_Veb_viewState();
}

class _Adhar_Veb_viewState extends State<Adhar_Veb_view> {
  final _process = 0.0.obs;
  late InAppWebViewController webView;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  var abc = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xffBEDFF3), Color(0xffCFDAF8)])),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('Details', () {
          backbuttoncontroller.showBackbuttonad(context, '/Adhar_Veb_view', '');
        }),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffBEDFF3), Color(0xffCFDAF8)])),
          child: Stack(
            children: [
              InAppWebView(
                initialUrlRequest: URLRequest(url: Uri.parse(abc)),
                onWebViewCreated: (InAppWebViewController controller) {
                  webView = controller;
                },
                onProgressChanged:
                    (InAppWebViewController controller, int process) {
                  _process.value = (process / 100);
                },
              ),
              if (_process.value < 1)
                Center(
                  child: Container(
                    height: ScreenSize.fSize_100(),
                    width: ScreenSize.fSize_100(),
                    child: Column(
                      children: [
                        Container(
                          height: ScreenSize.fSize_40(),
                          width: ScreenSize.fSize_40(),
                          child: CircularProgressIndicator(
                            color: const Color(0xffBEDFF3),
                            strokeWidth: ScreenSize.fSize_4(),
                            value: _process.value,
                          ),
                        ),
                        SizedBox(
                          height: ScreenSize.fSize_10(),
                        ),
                      ],
                    ),
                  ),
                )
              else
                const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

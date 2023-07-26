// ignore_for_file: non_constant_identifier_names, invalid_use_of_protected_member, avoid_print, sized_box_for_whitespace

import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'package:url_launcher/url_launcher.dart';

import '../main.dart';
import '../media/qury.dart';

final native = Get.put(NativeAds());
final banner = Get.put(BannerAds());

void initState() {
  FacebookAudienceNetwork.init();
}

class NativeAds extends GetxController {
  Future<void> _launchURL(String url) async {
    late Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  Widget getNT(context, String name, String Factoryid) {
    late NativeAd nativeAd;
    var isLoaded = false.obs;
    if (loan2.value[name]["native_ad_type"] == "admob") {
      nativeAd = NativeAd(
        request: const AdManagerAdRequest(),
        adUnitId: loan2.value[name]["native_admob"],
        listener: NativeAdListener(
          onAdLoaded: (ad) {
            nativeAd.load();
            isLoaded.value = true;
            print("Native ad Loaded");
          },
          onAdFailedToLoad: (ad, error) {
            print("Native ad Failed to Load");
          },
          onAdImpression: (ad) {
            print('native onAdImpression ');
          },
        ),
        // factoryId: 'listTileMedium',
        factoryId: Factoryid,
      );
      nativeAd.load();
    }
    // ScreenSize.fSize_150()
    return loan2.value[name]["native_ad_type"] == "admob"
        ? Obx(() => isLoaded.value
            ? Factoryid == "listTile"
                ? Padding(
                    padding: const EdgeInsets.all(12),
                    child: Stack(
                      children: [
                        Container(
                          height: ScreenSize.fSize_140(),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: AdWidget(
                            ad: nativeAd,
                          ),
                          // color: Colors.blue,
                        ),
                      ],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(12),
                    child: Stack(
                      children: [
                        Container(
                          width: ScreenSize.fSize_340(),
                          height: ScreenSize.fSize_250(),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: AdWidget(
                            ad: nativeAd,
                          ),
                          // color: Colors.blue,
                        ),
                      ],
                    ),
                  )
            : Factoryid == "listTileMedium"
                ? Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      width: ScreenSize.fSize_340(),
                      height: ScreenSize.fSize_250(),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: Color(0xffBEDFF3),
                        ),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      width: ScreenSize.fSize_340(),
                      height: ScreenSize.fSize_140(),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: Color(0xffBEDFF3),
                        ),
                      ),
                    ),
                  ))
        : loan2.value[name]["native_ad_type"] == "fb"
            ? Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  width: ScreenSize.fSize_350(),
                  height: Factoryid == "listTile"
                      ? ScreenSize.fSize_150()
                      : ScreenSize.fSize_250(),
                  child: FacebookNativeAd(
                    placementId: loan2.value["native_fb"],
                    adType: NativeAdType.NATIVE_AD,
                    width: ScreenSize.fSize_350(),
                    height: Factoryid == "listTile"
                        ? ScreenSize.fSize_150()
                        : ScreenSize.fSize_250(),
                    backgroundColor: Colors.white,
                    titleColor: Colors.white,
                    descriptionColor: Colors.black,
                    buttonColor: const Color(0xff13316D),
                    buttonTitleColor: Colors.white,
                    listener: (result, value) {
                      print("Native Ad: $result --> $value");
                    },
                    keepExpandedWhileLoading: true,
                    expandAnimationDuraion: 1000,
                  ),
                ),
              )
            : GestureDetector(
                onTap: () {
                  _launchURL(loan2.value[name]["url"]);
                },
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14),
                      child: Container(
                        width: ScreenSize.fSize_340(),
                        height: Factoryid == "listTile"
                            ? ScreenSize.fSize_150()
                            : ScreenSize.fSize_250(),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          image: DecorationImage(
                              image:
                                  NetworkImage(loan2.value[name]["image_url"]),
                              fit: BoxFit.fill),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: ScreenSize.fSize_18(),
                      left: ScreenSize.fSize_18(),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                            border:
                                Border.all(color: Colors.green, width: 1.5)),
                        height: ScreenSize.fSize_15(),
                        width: ScreenSize.fSize_25(),
                        child: Center(
                          child: Text('Ad',
                              style: GoogleFonts.k2d(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w700,
                                  fontSize: ScreenSize.fSize_10())),
                        ),
                      ),
                    ),
                  ],
                ),
              );
  }
}

//======================================FACEBOOK BANNER===================================================
int counter = 1;

class BannerAds extends GetxController {
  BannerAd? bannerAd;
  var bannerLoaded = false.obs;

  Widget getBN(String name) {
    if (loan2.value[name]["banner_ad_type"] == "admob") {
      bannerAd = BannerAd(
        size: AdSize.fluid,
        adUnitId: loan2.value[name]["banner_admob"],
        listener: BannerAdListener(
          onAdLoaded: (ad) {
            bannerAd!.load();
            bannerLoaded.value = true;
            print("Banner ad Loaded${counter++}");
          },
          onAdFailedToLoad: (ad, error) {
            // print('banner onAdFailedToLoad ${counter++}');
          },
          onAdImpression: (ad) {
            print('banner onAdImpression ');
          },
        ),
        request: const AdRequest(),
      );
      bannerAd!.load();
    }
    return loan2.value[name]["banner_ad_type"] == "admob"
        ? Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              child: AdWidget(
                ad: bannerAd!,
              ),
            ),
          )
        : Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              child: FacebookBannerAd(
                placementId: loan2.value["banner_fb"],
                bannerSize: BannerSize.STANDARD,
                listener: (result, value) {},
              ),
            ),
          );
  }
}

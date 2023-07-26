// ignore_for_file: non_constant_identifier_names

import 'package:adhar_loan_2/ad_controller/back_ad_controller.dart';
import 'package:adhar_loan_2/ad_controller/google_ads.dart';
import 'package:adhar_loan_2/ad_controller/main_ad_controller.dart';
import 'package:adhar_loan_2/controller/widget_controller.dart';
import 'package:adhar_loan_2/media/qury.dart';
import 'package:flutter/material.dart';

class LoanType extends StatefulWidget {
  const LoanType({super.key});

  @override
  State<LoanType> createState() => _LoanTypeState();
}

class _LoanTypeState extends State<LoanType> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/LoanType', ''),
      child: Scaffold(
        appBar: controllerAppbar.getappbar('LoanType', () {
          backbuttoncontroller.showBackbuttonad(context, '/LoanType', '');
        }),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffBEDFF3), Color(0xffCFDAF8)])),
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: ScreenSize.fSize_20()),
                    Image(
                      image: const AssetImage('asset/image/Loan Type Vector.png'),
                      height: ScreenSize.horizontalBlockSize! * 55,
                    ),
                    SizedBox(height: ScreenSize.fSize_30()),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: image.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: () {
                                controller.showbuttonad(
                                    context,
                                    '/LoanApply',
                                    '/LoanType',
                                    [text[index], Loan_descrip[index]]);
                              },
                              child: controllerwhitecontainr2.get(
                                  color[index],
                                  color[index],
                                  image[index],
                                  "${text[index]}"));
                        },
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_80()),
                  ],
                ),
              ),
              banner.getBN('/LoanType')
            ],
          ),
        ),
      ),
    );
  }
}

List Loan_descrip = [
  """➺ Generally you take a home loan for buying a house / flat, plot or construction / renovation. Sometimes home loan is taken to increase or repair the house. Here we are giving you all the necessary information about Home Loan.

➺ Before starting the home loan process, assess how much your income is and how much the banks can lend accordingly.

➺ Your ability to take a home loan depends on the capacity to repay it. It depends on your monthly earnings, expenses and family's earnings, assets, liabilities, income stability.

➺ Banks first see if you will be able to repay the home loan on time. The more money you get in your hands every month, the more the amount of your home loan will increase.""",
  """➺ Sometimes we need money in emergency. In this case, gold kept at home can be quite useful. Companies like Manapuram Finance, Muthoot Finance, IIFL offer gold loans.

➺ Some government and private sector banks also offer gold loans. You can take cash by pledging gold ornaments, coins etc. After paying this money, the pledged jewelery or gold is returned to the customer.

➺ Interest has to be paid on the loan amount. Gold loan has lower interest rate than personal loan. Personal loan.. How much interest do you think?

➺ Finance companies and bank interest rates are different for gold loans. These range from 1 percent to 15 percent. For example, ICICI Bank charges interest from 1% to 16.50% per annum on gold loans. Along with this, one percent charges processing fee.""",
  """➺ To promote small enterprises in the country, the government has introduced several loan schemes. Apart from the Pradhan Mantri Mudra Yojana, there are many other schemes in which you can take small loans to big loans.

➺ At this time, according to the schemes of the central and state government, you can take a loan of Rs 50,000 to Rs 1 lakh for your business.

➺ Actually banks decide to give you a loan according to your business plan. If the bank feels that your business and profits from it will be so much that you will be able to repay the loan of the bank within the stipulated period after completing your expenses, only then the bank approves your loan.

➺ What are the benefits of taking a business loan? Financial support for inward business needs of cash to meet financial needs for both short and long term.""",
  """➺ If you need a loan quickly, a personal loan may be an option for you.

➺ A personal loan is an unsecured loan and you get it quickly.

➺ But yes, you can expect the interest rate of a personal loan to be higher than a secured loan. Let us know in detail about personal loans.

➺ First of all, personal loan is available very quickly.9 Some banks even claim that they will give you a loan in a few minutes. Do not just go to claims. But yes, you can expect to get a loan soon.

➺ Secondly, personal loan is unsecured loan. That is why you do not need to have some security.

➺ This is one of the reasons for getting loan soon. Because less documents are required, that is why the loan is available sooner.""",
  """➺ Everyone's dream is to have a branded car with them at home. A car not only makes your life comfortable, but also reduces many difficulties. Reaching the office while battling public transport or going out for weekends, everything becomes very easy.

➺ Earlier, buying a car was a big thing for anyone, because it had to spend a lump sum, but now it is very easy due to the easy availability of a car loan.

➺ Banks and non-banking finance companies offer car loans on easy monthly installments, which has made it very easy to buy cars. Due to this, your budget is not deteriorated and convenience is also available.""",
  """➺ Quality education is very important for a person's complete and successful life. For some people it may be a graduation from a top institute. At a time when the cost of studies is constantly increasing, the cost of studying in the top institutes of the country and abroad is quite high.

➺ Keeping this in mind, parents invest in mutual funds, some fixed deposits and some resort to ULIPs. Even after all this, the amount may be less for your studies.

➺ Education loan helps you a lot in such situations. This loan fills the gap between your need and the money available.

➺ According to a study, the cost of studies is increasing at the rate of 15 percent annually. At this time, if the cost of studies is Rs 2.5 lakh, then after 15 years, it will cost Rs 20 lakh to do MBA.""",
];
List color = [
  const Color(0xFFF5E5FF),
  const Color(0xFFFEEBDA),
  const Color(0xFFE8EBFC),
  const Color(0xFFE2FBDB),
  const Color(0xFFFFD7D5),
  const Color(0xFFCCF2E3)
];
List image = [
  "asset/image/Icon/Loan Type/Personal Loan.png",
  "asset/image/Icon/Loan Type/Gold Loan.png",
  "asset/image/Icon/Loan Type/Home Loan.png",
  "asset/image/Icon/Loan Type/Business Loan.png",
  "asset/image/Icon/Loan Type/Education Loan.png",
  "asset/image/Icon/Loan Type/Car Loan.png",
];
List text = [
  "Personal Loan",
  "Gold Loan",
  "Home Loan",
  "Business Loan",
  "Education Loan",
  "Car Loan",
];

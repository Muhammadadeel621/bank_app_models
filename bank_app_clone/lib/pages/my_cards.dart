import 'package:bank_app_clone/constants/colors.dart';
import 'package:bank_app_clone/widgets/appbar_widget.dart';
import 'package:bank_app_clone/widgets/card_menu.dart';
import 'package:bank_app_clone/widgets/spacer.dart';
import 'package:bank_app_clone/widgets/text_widget.dart';
import 'package:bank_app_clone/widgets/transaction_UI.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MYCARDS extends StatefulWidget {
  const MYCARDS({super.key});

  @override
  State<MYCARDS> createState() => _MYCARDSState();
}

class _MYCARDSState extends State<MYCARDS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Spacerr(spHeight: 20),
            const AppbarWidget(
              textt: "My Cards",
              homeIcon: Icons.add,
              hasOption: true,
            ),
            const Spacerr(spHeight: 10),
            const CardMenu(),
            const Spacerr(spHeight: 20),
            // const TransactionUi(),
            const Padding(
              padding: EdgeInsets.only(right: 5),
              child: TransactionUI(),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                  child: TextWidget(
                      textt: "Monthly Spending Limit",
                      textSize: 18,
                      textColor: AppColors.textColor,
                      fonttext: "assets/fonts/Poppins-Medium.ttf"),
                ),
              ],
            ),
            Container(
              height: 120,
              width: 320,
              decoration: BoxDecoration(
                  color: AppColors.cardlimit,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: TextWidget(
                            textt: "Amount \$8,545.00",
                            textSize: 13,
                            textColor: AppColors.textColor,
                            fonttext: "assets/fonts/Poppins-Medium.ttf"),
                      ),
                    ],
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width - 80,
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 2000,
                        percent: 0.4,
                        center: Text("40.0%"),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: AppColors.textColor,
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextWidget(
                          textt: "\$0",
                          textSize: 12,
                          textColor: AppColors.homeMenu,
                          fonttext: "assets/fonts/Poppins-Regular.ttf"),
                      TextWidget(
                          textt: "\$4600",
                          textSize: 12,
                          textColor: AppColors.textColor,
                          fonttext: "assets/fonts/Poppins-Regular.ttf"),
                      TextWidget(
                          textt: "\$10,000",
                          textSize: 12,
                          textColor: AppColors.homeMenu,
                          fonttext: "assets/fonts/Poppins-Regular.ttf"),
                    ],
                  )
                ],
              ),
            ),
            const Spacerr(
              spHeight: 10,
            ),
          ],
        ),
      ),
    );
  }
}

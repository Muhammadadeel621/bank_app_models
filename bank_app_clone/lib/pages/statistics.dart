import 'package:bank_app_clone/constants/colors.dart';
import 'package:bank_app_clone/widgets/appbar_widget.dart';
import 'package:bank_app_clone/widgets/spacer.dart';
import 'package:bank_app_clone/widgets/text_widget.dart';
import 'package:bank_app_clone/widgets/transaction_UI.dart';
import 'package:bank_app_clone/widgets/transaction_history.dart';
import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';

class Statistics extends StatefulWidget {
  const Statistics({super.key});

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Spacerr(spHeight: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 3),
              child: AppbarWidget(
                homeIcon: Icons.notification_important,
                textt: "Statistics",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  const Spacerr(spHeight: 20),
                  const TextWidget(
                      textt: "Current Balance",
                      textSize: 18,
                      textColor: AppColors.homeMenu,
                      fonttext: "assets/fonts/Poppins-Bold.ttf"),
                  const TextWidget(
                      textt: "\$8,450.00",
                      textSize: 26,
                      textColor: AppColors.textColor,
                      fonttext: "assets/fonts/Poppins-Bold.ttf"),
                  const Spacerr(spHeight: 20),
                  const Image(image: AssetImage("assets/images/stats.png")),
                  // TabControlller(),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextWidget(
                            textt: "Oct",
                            textSize: 15,
                            textColor: AppColors.homeMenu,
                            fonttext: "assets/fonts/Poppins-Medium.ttf"),
                        Spacerr(spWidth: 40),
                        TextWidget(
                            textt: "Nov",
                            textSize: 15,
                            textColor: AppColors.homeMenu,
                            fonttext: "assets/fonts/Poppins-Medium.ttf"),
                        Spacerr(spWidth: 40),
                        TextWidget(
                            textt: "Dec",
                            textSize: 15,
                            textColor: AppColors.homeMenu,
                            fonttext: "assets/fonts/Poppins-Medium.ttf"),
                        Spacerr(spWidth: 40),
                        TextWidget(
                            textt: "Jan",
                            textSize: 15,
                            textColor: AppColors.homeMenu,
                            fonttext: "assets/fonts/Poppins-Medium.ttf"),
                        Spacerr(spWidth: 40),
                        TextWidget(
                            textt: "Feb",
                            textSize: 15,
                            textColor: AppColors.homeMenu,
                            fonttext: "assets/fonts/Poppins-Medium.ttf"),
                        Spacerr(spWidth: 40),
                        TextWidget(
                            textt: "Mar",
                            textSize: 15,
                            textColor: AppColors.homeMenu,
                            fonttext: "assets/fonts/Poppins-Medium.ttf"),
                        Spacerr(spWidth: 40),
                        TextWidget(
                            textt: "Apr",
                            textSize: 15,
                            textColor: AppColors.homeMenu,
                            fonttext: "assets/fonts/Poppins-Medium.ttf"),
                        Spacerr(spWidth: 40),
                        TextWidget(
                            textt: "May",
                            textSize: 15,
                            textColor: AppColors.homeMenu,
                            fonttext: "assets/fonts/Poppins-Medium.ttf"),
                        Spacerr(spWidth: 40),
                        TextWidget(
                            textt: "June",
                            textSize: 15,
                            textColor: AppColors.homeMenu,
                            fonttext: "assets/fonts/Poppins-Medium.ttf"),
                        Spacerr(spWidth: 40),
                        TextWidget(
                            textt: "July",
                            textSize: 15,
                            textColor: AppColors.homeMenu,
                            fonttext: "assets/fonts/Poppins-Medium.ttf"),
                        Spacerr(spWidth: 40),
                        TextWidget(
                            textt: "August",
                            textSize: 15,
                            textColor: AppColors.homeMenu,
                            fonttext: "assets/fonts/Poppins-Medium.ttf"),
                        Spacerr(spWidth: 40),
                        TextWidget(
                            textt: "September",
                            textSize: 15,
                            textColor: AppColors.homeMenu,
                            fonttext: "assets/fonts/Poppins-Medium.ttf"),
                        Spacerr(spHeight: 0, spWidth: 40),
                      ],
                    ),
                  ),
                  const Spacerr(spHeight: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextWidget(
                          textt: "Transaction",
                          textSize: 18,
                          textColor: AppColors.textColor,
                          fonttext: "assets/fonts/Poppins-Bold.ttf"),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const TransactionHistory()));
                        },
                        child: const TextWidget(
                            textt: "See All",
                            textSize: 14,
                            textColor: AppColors.homeMenu,
                            fonttext: "assets/fonts/Poppins-Bold.ttf"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const TransactionUI(),
          ],
        ),
      ),
    );
  }
}

import 'package:bank_app_clone/constants/colors.dart';
import 'package:bank_app_clone/widgets/spacer.dart';
import 'package:bank_app_clone/widgets/text_widget.dart';
import 'package:bank_app_clone/widgets/transaction_UI.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Spacerr(spHeight: 40, spWidth: 0),
            const TextWidget(
                textt: "Category Chart",
                textSize: 16,
                textColor: AppColors.textColor,
                fonttext: "assets/fonts/Poppins-Bold.ttf"),
            const Spacerr(spHeight: 10, spWidth: 0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
            ),
            CircularPercentIndicator(
              radius: 45.0,
              lineWidth: 4.0,
              percent: 0.60,
              center: const Text("60%"),
              progressColor: Colors.yellow,
            ),
            const Spacerr(spHeight: 10, spWidth: 0),
            const Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextWidget(
                        textt: "Transaction",
                        textSize: 13,
                        textColor: AppColors.textColor,
                        fonttext: "assets/fonts/poppins-Regular.ttf"),
                    TextWidget(
                        textt: "Transfer",
                        textSize: 13,
                        textColor: AppColors.textColor,
                        fonttext: "assets/fonts/poppins-Regular.ttf"),
                    TextWidget(
                        textt: "Travel",
                        textSize: 13,
                        textColor: AppColors.textColor,
                        fonttext: "assets/fonts/poppins-Regular.ttf"),
                  ],
                ),
                Spacerr(spHeight: 10, spWidth: 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextWidget(
                        textt: "food",
                        textSize: 13,
                        textColor: AppColors.textColor,
                        fonttext: "assets/fonts/poppins-Regular.ttf"),
                    TextWidget(
                        textt: "Shopping",
                        textSize: 13,
                        textColor: AppColors.textColor,
                        fonttext: "assets/fonts/poppins-Regular.ttf"),
                    TextWidget(
                        textt: "Car",
                        textSize: 13,
                        textColor: AppColors.textColor,
                        fonttext: "assets/fonts/poppins-Regular.ttf"),
                  ],
                ),
              ],
            ),
            const Spacerr(spHeight: 10, spWidth: 0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextWidget(
                    textt: "Transaction History",
                    textSize: 13,
                    textColor: AppColors.textColor,
                    fonttext: "assets/fonts/poppins-Regular.ttf"),
                TextWidget(
                    textt: "See all",
                    textSize: 13,
                    textColor: AppColors.textColor,
                    fonttext: "assets/fonts/poppins-Regular.ttf"),
              ],
            ),
            const Spacerr(spHeight: 10, spWidth: 0),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(
                      textt: "Today",
                      textSize: 14,
                      textColor: AppColors.homeMenu,
                      fonttext: "assets/fonts/Poppins-Regular.ttf"),
                ],
              ),
            ),
            const Spacerr(spHeight: 10, spWidth: 0),
            const TransactionUI(),
            const Spacerr(spHeight: 10, spWidth: 0),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(
                      textt: "Last 7 Days",
                      textSize: 14,
                      textColor: AppColors.homeMenu,
                      fonttext: "assets/fonts/Poppins-Regular.ttf"),
                ],
              ),
            ),
            const TransactionUI()
          ],
        ),
      ),
    );
  }
}

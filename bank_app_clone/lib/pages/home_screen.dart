import 'package:bank_app_clone/constants/colors.dart';
import 'package:bank_app_clone/widgets/appbar_icon_widget.dart';
import 'package:bank_app_clone/widgets/card_menu.dart';
import 'package:bank_app_clone/widgets/home_scr_listTile_widget.dart';
import 'package:bank_app_clone/widgets/spacer.dart';
import 'package:bank_app_clone/widgets/text_widget.dart';
import 'package:bank_app_clone/widgets/transaction_UI.dart';
import 'package:bank_app_clone/widgets/transaction_history.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 0, top: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const ListTileWidget(),

              const Spacerr(spHeight: 20),
              const CardMenu(),
              const Spacerr(spHeight: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleHome(homeIcon: Icons.arrow_circle_up_outlined),
                        CircleHome(homeIcon: Icons.arrow_downward),
                        CircleHome(homeIcon: Icons.attach_money),
                        CircleHome(homeIcon: Icons.install_mobile_outlined)
                      ],
                    ),
                    Spacerr(spHeight: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                              textt: "Sent",
                              textSize: 14,
                              textColor: AppColors.homeMenu,
                              fonttext: "assets/fonts/Poppins-Medium.ttf"),
                          TextWidget(
                              textt: "Receive",
                              textSize: 14,
                              textColor: AppColors.homeMenu,
                              fonttext: "assets/fonts/Poppins-Medium.ttf"),
                          TextWidget(
                              textt: "Loan",
                              textSize: 14,
                              textColor: AppColors.homeMenu,
                              fonttext: "assets/fonts/Poppins-Medium.ttf"),
                          TextWidget(
                              textt: "Topup",
                              textSize: 14,
                              textColor: AppColors.homeMenu,
                              fonttext: "assets/fonts/Poppins-Medium.ttf"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const Spacerr(spHeight: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
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
              ),
              // const TransactionUi()
              const Padding(
                padding: EdgeInsets.only(right: 5),
                child: TransactionUI(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

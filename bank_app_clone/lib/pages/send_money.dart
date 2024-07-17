import 'package:bank_app_clone/constants/colors.dart';
import 'package:bank_app_clone/widgets/appbar_widget.dart';
import 'package:bank_app_clone/widgets/button_widget.dart';
import 'package:bank_app_clone/widgets/card_menu.dart';
import 'package:bank_app_clone/widgets/send_Money_widget.dart';
import 'package:bank_app_clone/widgets/spacer.dart';
import 'package:bank_app_clone/widgets/text_widget.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [
          const Spacerr(spHeight: 25, spWidth: 0),
          const AppbarWidget(
            textt: "Send Money",
          ),
          const CardMenu(),
          const Spacerr(spHeight: 15, spWidth: 0),
          const SendMoneyWidget(),
          const Spacerr(spHeight: 30, spWidth: 0),
          Container(
            height: 130,
            width: 335,
            decoration: BoxDecoration(
                color: AppColors.homeCircleClr,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextWidget(
                        textt: "Enter Your Amount",
                        textSize: 11,
                        textColor: AppColors.sendMoneyCurrencyClr,
                        fonttext: "assets/fonts/Poppins-Regular.ttf"),
                    TextWidget(
                        textt: "Change Currency?",
                        textSize: 11,
                        textColor: AppColors.sendMoneyCurrency,
                        fonttext: "assets/fonts/Poppins-Regular.ttf"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                          text: "USD",
                          style: TextStyle(
                              fontSize: 24,
                              color: AppColors.sendMoneyUSD,
                              fontFamily: "assets/fonts/Bold.ttf"),
                          children: <TextSpan>[
                            TextSpan(
                                text: '  36.00',
                                style: TextStyle(
                                    color: AppColors.textColor,
                                    fontSize: 24,
                                    fontFamily: "assets/fonts/Bold.ttf")),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Spacerr(spHeight: 50),
          const ButtonWidget(
            textt: "Send Money",
          )
        ],
      ),
    );
  }
}

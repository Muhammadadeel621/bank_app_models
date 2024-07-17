import 'package:bank_app_clone/constants/colors.dart';
import 'package:bank_app_clone/widgets/appbar_widget.dart';
import 'package:bank_app_clone/widgets/spacer.dart';
import 'package:bank_app_clone/widgets/text_widget.dart';
import 'package:bank_app_clone/widgets/transaction_hist.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({super.key});

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Spacerr(spHeight: 25, spWidth: 0),
            AppbarWidget(
              textt: "Transaction History",
              homeIcon: Icons.update,
            ),
            Spacerr(spHeight: 10, spWidth: 0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                      textt: "Today",
                      textSize: 18,
                      textColor: AppColors.textColor,
                      fonttext: "assets/fonts/Poppins-Bold.ttf"),
                  TextWidget(
                      textt: "See All",
                      textSize: 14,
                      textColor: AppColors.homeMenu,
                      fonttext: "assets/fonts/Poppins-Bold.ttf"),
                ],
              ),
            ),
            Spacerr(spHeight: 20, spWidth: 0),
            TransactionHist(
                homeicoon: Icons.apple_rounded,
                textt: "Apple Store",
                textt1: "Entertainemnt",
                textt2: "-\$5,99"),
            Spacerr(spHeight: 20, spWidth: 0),
            TransactionHist(
                homeicoon: Icons.music_note_outlined,
                textt: "Spotify",
                textt1: "Music",
                textt2: "-\$5,99"),
            Spacerr(spHeight: 20, spWidth: 0),
            TransactionHist(
                homeicoon: Icons.download,
                textt: "Money Transfer",
                textt1: "Transaction",
                textt2: "\$300"),
            Spacerr(spHeight: 20, spWidth: 0),
            TransactionHist(
                homeicoon: Icons.shopping_cart,
                textt: "Grocery",
                textt1: "shopping",
                textt2: "-\$88"),
            Spacerr(spHeight: 20, spWidth: 0),
            TransactionHist(
                homeicoon: Icons.apple_rounded,
                textt: "Apple Store",
                textt1: "Entertainemnt",
                textt2: "-\$5,99"),
            Spacerr(spHeight: 20, spWidth: 0),
            TransactionHist(
                homeicoon: Icons.apple_rounded,
                textt: "Spotify",
                textt1: "Music",
                textt2: "-\$5,99"),
            Spacerr(spHeight: 20, spWidth: 0),
            TransactionHist(
                homeicoon: Icons.apple_rounded,
                textt: "Apple Store",
                textt1: "Entertainemnt",
                textt2: "-\$5,99"),
            Spacerr(spHeight: 20, spWidth: 0),
            TransactionHist(
                homeicoon: Icons.music_note_outlined,
                textt: "Spotify",
                textt1: "Music",
                textt2: "-\$5,99"),
            Spacerr(spHeight: 20, spWidth: 0),
            TransactionHist(
                homeicoon: Icons.download,
                textt: "Money Transfer",
                textt1: "Transaction",
                textt2: "\$300"),
            Spacerr(spHeight: 20, spWidth: 0),
            TransactionHist(
                homeicoon: Icons.shopping_cart,
                textt: "Grocery",
                textt1: "shopping",
                textt2: "-\$88"),
            Spacerr(spHeight: 20, spWidth: 0),
            TransactionHist(
                homeicoon: Icons.apple_rounded,
                textt: "Apple Store",
                textt1: "Entertainemnt",
                textt2: "-\$5,99"),
            Spacerr(spHeight: 20, spWidth: 0),
            TransactionHist(
                homeicoon: Icons.apple_rounded,
                textt: "Spotify",
                textt1: "Music",
                textt2: "-\$5,99"),
            Spacerr(spHeight: 20, spWidth: 0),
            TransactionHist(
                homeicoon: Icons.apple_rounded,
                textt: "Apple Store",
                textt1: "Entertainemnt",
                textt2: "-\$5,99"),
            Spacerr(spHeight: 20, spWidth: 0),
            TransactionHist(
                homeicoon: Icons.music_note_outlined,
                textt: "Spotify",
                textt1: "Music",
                textt2: "-\$5,99"),
            Spacerr(spHeight: 20, spWidth: 0),
            TransactionHist(
                homeicoon: Icons.download,
                textt: "Money Transfer",
                textt1: "Transaction",
                textt2: "\$300"),
            Spacerr(spHeight: 20, spWidth: 0),
            TransactionHist(
                homeicoon: Icons.shopping_cart,
                textt: "Grocery",
                textt1: "shopping",
                textt2: "-\$88"),
            Spacerr(spHeight: 20, spWidth: 0),
            TransactionHist(
                homeicoon: Icons.apple_rounded,
                textt: "Apple Store",
                textt1: "Entertainemnt",
                textt2: "-\$5,99"),
            Spacerr(spHeight: 20, spWidth: 0),
            TransactionHist(
                homeicoon: Icons.apple_rounded,
                textt: "Spotify",
                textt1: "Music",
                textt2: "-\$5,99"),
            Spacerr(spHeight: 20, spWidth: 0),
          ],
        ),
      ),
    );
  }
}

import 'package:bank_app_clone/widgets/spacer.dart';
import 'package:bank_app_clone/widgets/transaction_hist.dart';
import 'package:flutter/material.dart';

class TransactionUI extends StatelessWidget {
  const TransactionUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacerr(spHeight: 20),
        TransactionHist(
            homeicoon: Icons.apple_rounded,
            textt: "Apple Store",
            textt1: "Entertainemnt",
            textt2: "-\$5,99"),
        Spacerr(
          spHeight: 20,
        ),
        TransactionHist(
            homeicoon: Icons.music_note_outlined,
            textt: "Spotify",
            textt1: "Music",
            textt2: "-\$5,99"),
        Spacerr(spHeight: 20),
        TransactionHist(
            homeicoon: Icons.download,
            textt: "Money Transfer",
            textt1: "Transaction",
            textt2: "\$300"),
        Spacerr(spHeight: 20),
        TransactionHist(
            homeicoon: Icons.shopping_cart,
            textt: "Grocery",
            textt1: "shopping",
            textt2: "-\$88"),
        Spacerr(spHeight: 20),
        TransactionHist(
            homeicoon: Icons.apple_rounded,
            textt: "Apple Store",
            textt1: "Entertainemnt",
            textt2: "-\$5,99"),
        Spacerr(spHeight: 20),
        TransactionHist(
            homeicoon: Icons.apple_rounded,
            textt: "Spotify",
            textt1: "Music",
            textt2: "-\$5,99"),
        Spacerr(spHeight: 20),
        TransactionHist(
            homeicoon: Icons.apple_rounded,
            textt: "Apple Store",
            textt1: "Entertainemnt",
            textt2: "-\$5,99"),
        Spacerr(spHeight: 20),
        TransactionHist(
            homeicoon: Icons.music_note_outlined,
            textt: "Spotify",
            textt1: "Music",
            textt2: "-\$5,99"),
        Spacerr(spHeight: 20),
        TransactionHist(
            homeicoon: Icons.download,
            textt: "Money Transfer",
            textt1: "Transaction",
            textt2: "\$300"),
        Spacerr(spHeight: 20),
        TransactionHist(
            homeicoon: Icons.shopping_cart,
            textt: "Grocery",
            textt1: "shopping",
            textt2: "-\$88"),
        Spacerr(spHeight: 20),
      ],
    );
  }
}

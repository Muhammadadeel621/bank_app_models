import 'package:bank_app_clone/constants/colors.dart';
import 'package:bank_app_clone/widgets/appbar_widget.dart';
import 'package:bank_app_clone/widgets/card_menu.dart';
import 'package:bank_app_clone/widgets/spacer.dart';
import 'package:bank_app_clone/widgets/text_form_field.dart';
import 'package:bank_app_clone/widgets/text_widget_mod.dart';
import 'package:flutter/material.dart';

class NewCard extends StatefulWidget {
  const NewCard({super.key});

  @override
  State<NewCard> createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Spacerr(spHeight: 25, spWidth: 0),
            AppbarWidget(
              textt: "Add New Cards",
            ),
            Spacerr(spHeight: 30, spWidth: 0),
            CardMenu(),
            Spacerr(spHeight: 20, spWidth: 0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidgett(labelTitle: "Cardholder Name"),
                ],
              ),
            ),
            CustomtextFormField(
              hinttextt: "Dennis Nzioki",
              textFieldIcon: Icon(
                Icons.person_pin,
                color: AppColors.textColor,
              ),
            ),
            Spacerr(spHeight: 10, spWidth: 0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidgett(labelTitle: "Expiry Date"),
                        CustomtextFormField(
                          hinttextt: "09/06/2024",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10), // Adjust the spacing as needed
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidgett(labelTitle: "4-digit CVV"),
                        CustomtextFormField(
                          hinttextt: "6986",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacerr(spHeight: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidgett(labelTitle: "Card Number"),
                ],
              ),
            ),
            CustomtextFormField(
              hinttextt: "4562 1122 4595 7852",
              textFieldIcon: Icon(
                Icons.payments_outlined,
                color: AppColors.textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../utils/banking_colors.dart';
import '../utils/banking_constants.dart';
import '../utils/banking_images.dart';
import '../utils/banking_strings.dart';
import '../utils/banking_widget.dart';

class BankingSavingSuccessful extends StatefulWidget {
  static var tag = "/BankingSavingSuccessful";

  const BankingSavingSuccessful({Key? key}) : super(key: key);

  @override
  _BankingSavingSuccessfulState createState() => _BankingSavingSuccessfulState();
}

class _BankingSavingSuccessfulState extends State<BankingSavingSuccessful> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Banking_whitePureColor,
      body: Container(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              30.height,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Icon(Icons.chevron_left, size: 25, color: Banking_blackColor).onTap(
                    () {
                      finish(context);
                    },
                  ),
                  16.height,
                  Text("Save\nSuccessful", style: boldTextStyle(size: 30, color: Banking_TextColorPrimary)),
                ],
              ),
              16.height,
              Image.asset(Banking_ic_walk3, height: 250, width: width, fit: BoxFit.fill),
              8.height,
              Text(Banking_lbl_Successful_Detail, style: primaryTextStyle(color: Banking_TextColorSecondary, size: 18, fontFamily: fontRegular)).center(),
              24.height,
              BankingButton(
                  textContent: Banking_lbl_View_Saving,
                  onPressed: () {
                    finish(context);
                    finish(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

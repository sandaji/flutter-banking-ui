import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../utils/banking_colors.dart';
import '../utils/banking_constants.dart';
import '../utils/banking_strings.dart';

class BankingTermsCondition extends StatefulWidget {
  static var tag = "/BankingTermsCondition";

  const BankingTermsCondition({Key? key}) : super(key: key);

  @override
  _BankingTermsConditionState createState() => _BankingTermsConditionState();
}

class _BankingTermsConditionState extends State<BankingTermsCondition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Banking_app_Background,
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
                  const Icon(Icons.chevron_left, size: 30, color: Banking_blackColor)
                      .onTap(
                    () {
                      finish(context);
                    },
                  ),
                  30.height,
                  Text(Banking_lbl_Term_Conditions,
                      style: boldTextStyle(
                          size: 30, color: Banking_TextColorPrimary)),
                ],
              ),
              20.height,
              UL(
                symbolColor: Banking_Primary,
                children: List.generate(
                  8,
                  (index) => Text(
                    Banking_lbl_Walk1SubTitle,
                    style: primaryTextStyle(size: 16, fontFamily: fontRegular),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart' as nb_utils;
import 'package:nb_utils/nb_utils.dart';
import '../utils/banking_constants.dart';
import 'banking_forgot_password.dart';
import '../utils/banking_colors.dart';
import '../utils/banking_constants.dart' as banking_constants;
import '../utils/banking_strings.dart';
import '../utils/banking_widget.dart';

class BankingResend extends StatefulWidget {
  static var tag = "/BankingResend";

  const BankingResend({Key? key}) : super(key: key);

  @override
  _BankingResendState createState() => _BankingResendState();
}

class _BankingResendState extends State<BankingResend> {
  @override
  void initState() {
    super.initState();
    setStatusBarColor(Banking_app_Background);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Banking_app_Background,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, width * 0.45),
        child: headerView("Forgot\nPassword", width * 0.45, context), // Fixed typo
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  Banking_lbl_Walk1SubTitle,
                  style: primaryTextStyle(
                      color: Banking_TextColorSecondary,
                      size: 16,
                      fontFamily: fontSemiBold),
                ).paddingOnly(
                    left: banking_constants.spacingStandardNew.toDouble(), // Added prefix and converted to double
                    right: banking_constants.spacingStandardNew.toDouble()), // Added prefix and converted to double
                8.height,
                EditText(text: "Phone", isPassword: false).paddingOnly(
                    left: banking_constants.spacingStandardNew.toDouble(), // Added prefix and converted to double
                    right: banking_constants.spacingStandardNew.toDouble()), // Added prefix and converted to double
                16.height,
                BankingButton(
                  textContent: Banking_lbl_Next,
                  onPressed: () {
                    const BankingForgotPwd().launch(context);
                  },
                ).paddingOnly(
                    top: banking_constants.spacingStandardNew.toDouble(), // Added prefix and converted to double
                    left: banking_constants.spacingStandardNew.toDouble(), // Added prefix and converted to double
                    right: banking_constants.spacingStandardNew.toDouble(), // Added prefix and converted to double
                    bottom: nb_utils.spacingStandard.toDouble()), // Added prefix and converted to double
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              Banking_lbl_app_Name.toUpperCase(),
              style: primaryTextStyle(
                  color: Banking_TextColorSecondary,
                  size: 16,
                  fontFamily: fontRegular),
            ).paddingOnly(bottom: banking_constants.spacingStandardNew.toDouble()), // Added prefix and converted to double
          ),
        ],
      ),
    );
  }
}

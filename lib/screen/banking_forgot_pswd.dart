import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'banking_resend.dart';
import '../utils/banking_colors.dart';
import '../utils/banking_constants.dart';
import '../utils/banking_strings.dart';
import '../utils/banking_widget.dart';

class BankingForgotPassword extends StatefulWidget {
  static var tag = "/BankingForgotPassword";

  const BankingForgotPassword({Key? key}) : super(key: key);

  @override
  _BankingForgotPasswordState createState() => _BankingForgotPasswordState();
}

class _BankingForgotPasswordState extends State<BankingForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Banking_app_Background,
      body: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  30.height,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Icon(Icons.chevron_left,
                              size: 30, color: Banking_blackColor)
                          .onTap(
                        () {
                          finish(context);
                        },
                      ),
                      30.height,
                      Text("Forgot\nPassword",
                          style: boldTextStyle(
                              size: 30, color: Banking_TextColorPrimary)),
                    ],
                  ),
                  34.height,
                  Text(Banking_lbl_Walk1SubTitle,
                      style: primaryTextStyle(
                          color: Banking_TextColorSecondary,
                          fontFamily: fontSemiBold,
                          size: 16)),
                  16.height,
                  EditText(text: "Phone", isPassword: false),
                  16.height,
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      Banking_lbl_Resend,
                      style:
                          secondaryTextStyle(size: 16, fontFamily: fontMedium),
                    ).onTap(() {
                      const BankingResend().launch(context);
                    }),
                  ),
                  16.height,
                  BankingButton(
                      textContent: Banking_lbl_Next, onPressed: () {}),
                ],
              ),
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
              ).paddingOnly(bottom: 16)),
        ],
      ),
    );
  }
}

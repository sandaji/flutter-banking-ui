import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart' as nb_utils;
import 'package:nb_utils/nb_utils.dart';
import '../utils/banking_colors.dart';
import '../utils/banking_constants.dart' as banking_constants;
import '../utils/banking_images.dart';
import '../utils/banking_strings.dart';
import '../utils/banking_widget.dart';

class BankingTransferSuccessful extends StatefulWidget {
  static var tag = "/BankingTransferSuccessful";

  const BankingTransferSuccessful({Key? key}) : super(key: key);

  @override
  _BankingTransferSuccessfulState createState() => _BankingTransferSuccessfulState();
}

class _BankingTransferSuccessfulState extends State<BankingTransferSuccessful> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Banking_whitePureColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            8.height,
            headerView(Banking_lbl_Transfer_Successful, width * 0.4, context),
            24.height,
            Image.asset(Banking_ic_walk2,
                height: width * 0.6, width: width, fit: BoxFit.cover),
            24.height,
            Text(Banking_lbl_Info_Transfer_Successful,
                    style: secondaryTextStyle(
                        color: Banking_TextColorSecondary, size: 18),
                    textAlign: TextAlign.center)
                .center(),
            8.height,
            BankingButton(
                    textContent: Banking_lbl_Transaction_History,
                    onPressed: () {})
                .paddingOnly(
                    top: banking_constants.spacingStandardNew.toDouble(), // Added prefix and converted to double
                    left: banking_constants.spacingStandardNew.toDouble(), // Added prefix and converted to double
                    right: banking_constants.spacingStandardNew.toDouble(), // Added prefix and converted to double
                    bottom: nb_utils.spacingStandard.toDouble()), // Added prefix and converted to double
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart' as nb_utils;
import 'package:nb_utils/nb_utils.dart';
import '../model/banking_model.dart';
import '../utils/banking_constants.dart';
import 'banking_invoice_detail.dart';

import '../utils/banking_colors.dart';
import '../utils/banking_constants.dart' as banking_constants;
import '../utils/banking_strings.dart';
import '../utils/banking_widget.dart';

class BankingPaymentInvoice extends StatefulWidget {
  static var tag = "/BankingPaymentInvoice";

  const BankingPaymentInvoice({Key? key}) : super(key: key);

  @override
  _BankingPaymentInvoiceState createState() => _BankingPaymentInvoiceState();
}

class _BankingPaymentInvoiceState extends State<BankingPaymentInvoice> {
  var currentIndexPage = 0;
  List<BankingCardModel>? mList;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Banking_app_Background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            16.height,
            headerView(Banking_lbl_Payment_Invoice, width * 0.4, context),
            Text("Invoice Feb 2020",
                style: nb_utils.secondaryTextStyle(
                    color: Banking_TextColorSecondary,
                    size: 14,
                    fontFamily: fontRegular))
                .paddingOnly(left: banking_constants.spacingStandardNew, top: banking_constants.spacingStandardNew), // Updated line
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Name",
                        style: nb_utils.primaryTextStyle(
                            color: Banking_TextColorSecondary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(left: banking_constants.spacingStandardNew, top: banking_constants.spacingStandardNew), // Updated line
                    Text("John Smith",
                        style: primaryTextStyle(
                            color: Banking_TextColorPrimary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(right: banking_constants.spacingStandardNew, top: banking_constants.spacingStandardNew), // Updated line
                  ],
                ),
                const Divider()
                    .paddingOnly(left: nb_utils.spacingStandard.toDouble(), right: nb_utils.spacingStandard.toDouble()), // Updated line
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Address",
                        style: primaryTextStyle(
                            color: Banking_TextColorSecondary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(left: banking_constants.spacingStandardNew, top: banking_constants.spacingStandardNew), // Updated line
                    Text("874 Cameron Road,NY,US",
                        style: primaryTextStyle(
                            color: Banking_TextColorPrimary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(right: banking_constants.spacingStandardNew, top: banking_constants.spacingStandardNew), // Updated line
                  ],
                ),
                const Divider()
                    .paddingOnly(left: nb_utils.spacingStandard.toDouble(), right: nb_utils.spacingStandard.toDouble()), // Updated line
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Code",
                        style: primaryTextStyle(
                            color: Banking_TextColorSecondary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(left: banking_constants.spacingStandardNew, top: banking_constants.spacingStandardNew), // Updated line
                    Text("#7783",
                        style: primaryTextStyle(
                            color: Banking_TextColorPrimary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(right: banking_constants.spacingStandardNew, top: banking_constants.spacingStandardNew), // Updated line
                  ],
                ),
                const Divider()
                    .paddingOnly(left: nb_utils.spacingStandard.toDouble(), right: nb_utils.spacingStandard.toDouble()), // Updated line
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("TimeService",
                        style: primaryTextStyle(
                            color: Banking_TextColorSecondary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(left: banking_constants.spacingStandardNew, top: banking_constants.spacingStandardNew), // Updated line
                    Text("25 Jan - 25 Feb",
                        style: primaryTextStyle(
                            color: Banking_TextColorPrimary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(right: banking_constants.spacingStandardNew, top: banking_constants.spacingStandardNew), // Updated line
                  ],
                ),
                const Divider()
                    .paddingOnly(left: nb_utils.spacingStandard.toDouble(), right: nb_utils.spacingStandard.toDouble()), // Updated line
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Amount Transaction",
                        style: primaryTextStyle(
                            color: Banking_TextColorSecondary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(left: banking_constants.spacingStandardNew, top: banking_constants.spacingStandardNew), // Updated line
                    Text("\$200",
                        style: primaryTextStyle(
                            color: Banking_TextColorPrimary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(right: banking_constants.spacingStandardNew, top: banking_constants.spacingStandardNew), // Updated line
                  ],
                ),
                const Divider()
                    .paddingOnly(left: nb_utils.spacingStandard.toDouble(), right: nb_utils.spacingStandard.toDouble()), // Updated line
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Status",
                        style: primaryTextStyle(
                            color: Banking_TextColorSecondary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(left: banking_constants.spacingStandardNew, top: banking_constants.spacingStandardNew), // Updated line
                    Text("Payment Successful",
                        style: primaryTextStyle(
                            color: Banking_TextColorPrimary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(right: banking_constants.spacingStandardNew, top: banking_constants.spacingStandardNew), // Updated line
                  ],
                ),
                const Divider()
                    .paddingOnly(left: nb_utils.spacingStandard.toDouble(), right: nb_utils.spacingStandard.toDouble()), // Updated line
              ],
            ),
            16.height,
            BankingButton(
                textContent: Banking_lbl_Confirm,
                onPressed: () {
                  const BankingInvoiceDetail().launch(context);
                })
                .paddingOnly(
              top: banking_constants.spacingStandardNew, // Updated line
              left: banking_constants.spacingStandardNew, // Updated line
              right: banking_constants.spacingStandardNew, // Updated line
              bottom: banking_constants.spacingStandardNew, // Updated line
            ),
          ],
        ),
      ),
    );
  }
}

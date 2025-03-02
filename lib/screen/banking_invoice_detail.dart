import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../utils/banking_colors.dart';
import '../utils/banking_constants.dart';
import '../utils/banking_slider.dart';
import '../utils/banking_strings.dart';
import '../utils/banking_widget.dart';

class BankingInvoiceDetail extends StatefulWidget {
  static var tag = "/BankingInvoiceDetail";

  const BankingInvoiceDetail({Key? key}) : super(key: key);

  @override
  _BankingInvoiceDetailState createState() => _BankingInvoiceDetailState();
}

class _BankingInvoiceDetailState extends State<BankingInvoiceDetail> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var spacingStandardNew;
    var spacingStandard;
    return Scaffold(
      backgroundColor: Banking_app_Background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: spacingStandardNew),
            headerView(Banking_lbl_Pay_Voice, width * 0.34, context),
            Text("Choose Account to Transfer",
                    style: secondaryTextStyle(
                        color: Banking_TextColorSecondary,
                        size: 14,
                        fontFamily: fontRegular))
                .paddingOnly(
                    left: spacingStandardNew, top: spacingStandardNew),
            16.height,
            const BankingSliderWidget(),
            Text("Invoice Mar 2020",
                    style: secondaryTextStyle(
                        color: Banking_TextColorSecondary,
                        size: 14,
                        fontFamily: fontRegular))
                .paddingOnly(
                    left: spacingStandardNew, top: spacingStandardNew),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Name",
                            style: primaryTextStyle(
                                color: Banking_TextColorSecondary,
                                size: 18,
                                fontFamily: fontRegular))
                        .paddingOnly(
                            left: spacingStandardNew,
                            top: spacingStandardNew),
                    Text("John Smith",
                            style: primaryTextStyle(
                                color: Banking_TextColorPrimary,
                                size: 18,
                                fontFamily: fontRegular))
                        .paddingOnly(
                            right: spacingStandardNew,
                            top: spacingStandardNew),
                  ],
                ),
                const Divider().paddingOnly(
                    left: spacingStandard, right: spacingStandard)
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
                        .paddingOnly(
                            left: spacingStandardNew,
                            top: spacingStandardNew),
                    Text("874 Cameron Road,NY,US",
                            style: primaryTextStyle(
                                color: Banking_TextColorPrimary,
                                size: 18,
                                fontFamily: fontRegular))
                        .paddingOnly(
                            right: spacingStandardNew,
                            top: spacingStandardNew),
                  ],
                ),
                const Divider().paddingOnly(
                    left: spacingStandard, right: spacingStandard)
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
                        .paddingOnly(
                            left: spacingStandardNew,
                            top: spacingStandardNew),
                    Text("#7783",
                            style: primaryTextStyle(
                                color: Banking_TextColorPrimary,
                                size: 18,
                                fontFamily: fontRegular))
                        .paddingOnly(
                            right: spacingStandardNew,
                            top: spacingStandardNew),
                  ],
                ),
                const Divider().paddingOnly(
                    left: spacingStandard, right: spacingStandard)
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
                        .paddingOnly(
                            left: spacingStandardNew,
                            top: spacingStandardNew),
                    Text("25 Jan - 25 Feb",
                            style: primaryTextStyle(
                                color: Banking_TextColorPrimary,
                                size: 18,
                                fontFamily: fontRegular))
                        .paddingOnly(
                            right: spacingStandardNew,
                            top: spacingStandardNew),
                  ],
                ),
                const Divider().paddingOnly(
                    left: spacingStandard, right: spacingStandard)
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
                        .paddingOnly(
                            left: spacingStandardNew,
                            top: spacingStandardNew),
                    Text("\$200",
                            style: primaryTextStyle(
                                color: Banking_TextColorPrimary,
                                size: 18,
                                fontFamily: fontRegular))
                        .paddingOnly(
                            right: spacingStandardNew,
                            top: spacingStandardNew),
                  ],
                ),
                const Divider().paddingOnly(
                    left: spacingStandard, right: spacingStandard)
              ],
            ),
            16.height,
            BankingButton(textContent: Banking_lbl_Pay, onPressed: () {})
                .paddingOnly(
                    top: spacingStandardNew,
                    left: spacingStandardNew,
                    right: spacingStandardNew,
                    bottom: spacingStandardNew),
          ],
        ),
      ),
    );
  }
}

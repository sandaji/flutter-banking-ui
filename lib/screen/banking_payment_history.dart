import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart' as nb_utils;
import 'package:nb_utils/nb_utils.dart';
import '../model/banking_model.dart';
import '../utils/banking_colors.dart';
import '../utils/banking_constants.dart' as banking_constants;
import '../utils/banking_constants.dart';
import '../utils/banking_data_generator.dart';
import '../utils/banking_strings.dart';
import '../utils/banking_widget.dart';


class BankingPaymentHistory extends StatefulWidget {
  static var tag = "/BankingPaymentHistory";

  const BankingPaymentHistory({Key? key}) : super(key: key);

  @override
  _BankingPaymentHistoryState createState() => _BankingPaymentHistoryState();
}

class _BankingPaymentHistoryState extends State<BankingPaymentHistory> {
  late List<BankingPaymentHistoryModel> mList1;

  @override
  void initState() {
    super.initState();
    mList1 = bankingHistoryList1();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Banking_app_Background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: banking_constants.spacingStandardNew, // Use prefix to resolve conflict
            ),
            headerView(Banking_lbl_Payment_History, width * 0.4, context),
            Text("22 Feb 2021",
                style: secondaryTextStyle(
                    color: Banking_TextColorSecondary,
                    size: 14,
                    fontFamily: fontRegular))
                .paddingOnly(
                left: banking_constants.spacingStandardNew, top: banking_constants.spacingStandardNew), // Use prefix to resolve conflict
            const Divider().paddingOnly(
                left: banking_constants.spacingStandardNew, right: banking_constants.spacingStandardNew), // Use prefix to resolve conflict
            ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: mList1.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Row(
                  children: <Widget>[
                    const Icon(Icons.account_balance_wallet,
                        size: 30, color: Banking_Primary)
                        .paddingOnly(left: nb_utils.spacingStandard.toDouble().toDouble()),
                    Text(mList1[index].title!,
                        style: primaryTextStyle(size: 16))
                        .paddingOnly(
                        left: nb_utils.spacingStandard.toDouble(), right: nb_utils.spacingStandard.toDouble())
                        .expand(),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(mList1[index].rs!,
                          style: primaryTextStyle(
                              color: Banking_TextColorOrange, size: 16))
                          .paddingOnly(
                          left: nb_utils.spacingStandard.toDouble(), right: nb_utils.spacingStandard.toDouble()),
                    )
                  ],
                ).paddingAll(nb_utils.spacingStandard.toDouble()),
              ),
            ).paddingOnly(bottom: 8),
            Text("22 Mar 2021",
                style: secondaryTextStyle(
                    color: Banking_TextColorSecondary,
                    size: 14,
                    fontFamily: fontRegular))
                .paddingOnly(
                left: banking_constants.spacingStandardNew, top: banking_constants.spacingStandardNew), // Use prefix to resolve conflict
            Divider().paddingOnly(
                left: banking_constants.spacingStandardNew, right: banking_constants.spacingStandardNew), // Use prefix to resolve conflict
            ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: mList1.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Row(
                  children: <Widget>[
                    Icon(Icons.account_balance_wallet,
                        size: 30, color: Banking_Primary)
                        .paddingOnly(left: nb_utils.spacingStandard.toDouble()),
                    Text(mList1[index].title!,
                        style: primaryTextStyle(size: 16))
                        .paddingOnly(
                        left: nb_utils.spacingStandard.toDouble(), right: nb_utils.spacingStandard.toDouble())
                        .expand(),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(mList1[index].rs!,
                          style: primaryTextStyle(
                              color: Banking_TextColorOrange, size: 16))
                          .paddingOnly(
                          left: nb_utils.spacingStandard.toDouble(), right: nb_utils.spacingStandard.toDouble()),
                    )
                  ],
                ).paddingAll(nb_utils.spacingStandard.toDouble()),
              ),
            
                style: secondaryTextStyle(
                    color: Banking_TextColorSecondary,
                    size: 14,
                    fontFamily: fontRegular))
                .paddingOnly(
                left: spacingStandardNew, top: spacingStandardNew),
            const Divider().paddingOnly(
                left: spacingStandardNew, right: spacingStandardNew),
            ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: mList1.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Row(
                  children: <Widget>[
                    const Icon(Icons.account_balance_wallet,
                        size: 30, color: Banking_Primary)
                        .paddingOnly(left: spacingStandard),
                    Text(mList1[index].title!,
                        style: primaryTextStyle(size: 16))
                        .paddingOnly(
                        left: spacingStandard, right: spacingStandard)
                        .expand(),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(mList1[index].rs!,
                          style: primaryTextStyle(
                              color: Banking_TextColorOrange, size: 16))
                          .paddingOnly(
                          left: spacingStandard, right: spacingStandard),
                    )
                  ],
                ).paddingAll(spacingStandard),
              ),
            ).paddingOnly(bottom: 8),
            Text("22 Mar 2021",
                style: secondaryTextStyle(
                    color: Banking_TextColorSecondary,
                    size: 14,
                    fontFamily: fontRegular))
                .paddingOnly(
                left: spacingStandardNew, top: spacingStandardNew),
            const Divider().paddingOnly(
                left: spacingStandardNew, right: spacingStandardNew),
            ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: mList1.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Row(
                  children: <Widget>[
                    Icon(Icons.account_balance_wallet,
                        size: 30, color: Banking_Primary)
                        .paddingOnly(left: spacingStandard),
                    Text(mList1[index].title!,
                        style: primaryTextStyle(size: 16))
                        .paddingOnly(
                        left: spacingStandard, right: spacingStandard)
                        .expand(),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(mList1[index].rs!,
                          style: primaryTextStyle(
                              color: Banking_TextColorOrange, size: 16))
                          .paddingOnly(
                          left: spacingStandard, right: spacingStandard),
                    )
                  ],
                ).paddingAll(spacingStandard),
              ),
            ).paddingOnly(bottom: 8),
            Text("22 Apr 2021",
                style: secondaryTextStyle(
                    color: Banking_TextColorSecondary,
                    size: 14,
                    fontFamily: fontRegular))
                .paddingOnly(
                left: spacingStandardNew, top: spacingStandardNew),
            Divider().paddingOnly(
                left: spacingStandardNew, right: spacingStandardNew),
            ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: mList1.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.account_balance_wallet,
                            size: 30, color: Banking_Primary)
                            .paddingOnly(left: spacingStandard),
                        Text(mList1[index].title!,
                            style: primaryTextStyle(size: 16))
                            .paddingOnly(
                            left: spacingStandard, right: spacingStandard)
                            .expand(),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(mList1[index].rs!,
                              style: primaryTextStyle(
                                  color: Banking_TextColorOrange, size: 16))
                              .paddingOnly(
                              left: spacingStandard, right: spacingStandard),
                        )
                      ],
                    ).paddingAll(spacingStandard)),
              ),
            ).paddingOnly(bottom: 8)
          ],
        ),
      ),
    );
  }
}
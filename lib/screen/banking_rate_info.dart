import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../model/banking_model.dart';
import '../utils/banking_colors.dart';
import '../utils/banking_constants.dart';
import '../utils/banking_data_generator.dart';
import '../utils/banking_strings.dart';

class BankingRateInfo extends StatefulWidget {
  static var tag = "/BankingRateInfo";

  const BankingRateInfo({Key? key}) : super(key: key);

  @override
  _BankingRateInfoState createState() => _BankingRateInfoState();
}

class _BankingRateInfoState extends State<BankingRateInfo> {
  late List<BankingRateInfoModel> mList1;

  @override
  void initState() {
    super.initState();
    mList1 = bankingRateInformationList();
  }

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
                  Text(Banking_lbl_Rate_Info,
                      style: boldTextStyle(
                          size: 30, color: Banking_TextColorPrimary)),
                ],
              ),
              Container(
                padding:
                    const EdgeInsets.only(top: 16, left: 4, right: 4, bottom: 16),
                child: Row(
                  children: <Widget>[
                    Text('Currency',
                            style: primaryTextStyle(
                                size: 18,
                                color: Banking_TextColorPrimary,
                                fontFamily: fontMedium))
                        .expand(flex: 4),
                    Text('Buy',
                            style: primaryTextStyle(
                                size: 18,
                                color: Banking_TextColorPrimary,
                                fontFamily: fontMedium))
                        .expand(),
                    Text('Sell',
                            style: primaryTextStyle(
                                size: 18,
                                color: Banking_TextColorPrimary,
                                fontFamily: fontMedium))
                        .expand(),
                  ],
                ),
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: mList1.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset(mList1[index].flag!,
                                    height: 30, width: 30, fit: BoxFit.fill)
                                .cornerRadiusWithClipRRect(15.0),
                            10.width,
                            Text(mList1[index].currency!,
                                style: primaryTextStyle(
                                    size: 16,
                                    color: Banking_TextColorPrimary,
                                    fontFamily: fontRegular)),
                          ],
                        ).expand(flex: 4),
                        Text(mList1[index].buy!,
                                style: primaryTextStyle(
                                    size: 18,
                                    color: Banking_TextColorPrimary,
                                    fontFamily: fontRegular))
                            .expand(),
                        Text(mList1[index].sell!,
                                style: primaryTextStyle(
                                    size: 18,
                                    color: Banking_TextColorPrimary,
                                    fontFamily: fontRegular))
                            .expand(),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

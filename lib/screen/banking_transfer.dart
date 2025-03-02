import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../utils/banking_constants.dart';
import 'banking_transfer_successful.dart';
import '../utils/banking_colors.dart';
import '../utils/banking_images.dart';
import '../utils/banking_slider.dart';
import '../utils/banking_strings.dart';
import '../utils/banking_widget.dart';
import 'package:nb_utils/nb_utils.dart' as nb_utils;

class BankingTransfer extends StatefulWidget {
  static var tag = "/BankingTransfer";

  const BankingTransfer({Key? key}) : super(key: key);

  @override
  _BankingTransferState createState() => _BankingTransferState();
}

class _BankingTransferState extends State<BankingTransfer> {
  bool isSwitch = false;
  bool isGetOtp = false;
  var tapCount = 0;

  void tappedConfirm() {
    if (tapCount != 1) {
      const BankingTransferSuccessful().launch(context);
    }
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
            children: [
              10.height,
              Text(
                isSwitch == true
                    ? Banking_lbl_Confirm_Transfer
                    : Banking_lbl_Transfer,
                style: primaryTextStyle(
                    color: Banking_TextColorPrimary,
                    size: 26,
                    fontFamily: fontBold),
              ),
              10.height,
              Text("Choose Account to Transfer",
                  style: primaryTextStyle(
                      color: Banking_TextColorSecondary,
                      size: 14,
                      fontFamily: fontBold)),
              16.height,
              const BankingSliderWidget().visible(isSwitch == false),
              Container(
                margin: EdgeInsets.only(
                    left: nb_utils.spacingStandardNew.toDouble().toDouble(), right: nb_utils.spacingStandardNew.toDouble().toDouble()),
                child: Stack(
                  children: [
                    Image.asset(Banking_ic_CardImage,
                        fit: BoxFit.cover, height: 200),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("IJAMY VINCENT",
                                    style: boldTextStyle(
                                        color: Banking_whitePureColor,
                                        size: 18,
                                        fontFamily: fontMedium))
                                .paddingOnly(
                                    top: nb_utils.spacingLarge.toDouble().toDouble().toDouble(),
                                    left: nb_utils.spacingStandardNew.toDouble().toDouble()),
                            Text(Banking_lbl_app_Name,
                                    style: boldTextStyle(
                                        color: Banking_whitePureColor,
                                        size: 16,
                                        fontFamily: fontMedium))
                                .paddingOnly(
                                    top: nb_utils.spacingLarge.toDouble(),
                                    right: nb_utils.spacingStandardNew.toDouble())
                          ],
                        ),
                        Text("The Same Bank",
                                style: boldTextStyle(
                                    color: Banking_whitePureColor,
                                    size: 18,
                                    fontFamily: fontMedium))
                            .paddingOnly(
                                top: nb_utils.spacingLarge.toDouble(), left: nb_utils.spacingStandardNew.toDouble()),
                        Text('1121 *** ** *** 5555',
                                style: boldTextStyle(

                                    color: Banking_whitePureColor,
                                    size: 18,
                                    fontFamily: fontMedium))
                            .paddingOnly(
                                left: nb_utils.spacingStandardNew.toDouble(), top: nb_utils.spacingControl.toDouble()),
                        Text("\$" "12,500",
                                style: boldTextStyle(
                                    color: Banking_whitePureColor,
                                    size: 18,
                                    fontFamily: fontMedium))
                            .paddingOnly(
                                top: nb_utils.spacingStandard.toDouble(), left: nb_utils.spacingStandardNew.toDouble()),
                      ],
                    ),
                    10.height,
                  ],
                ),
              ).visible(isSwitch == true),
              16.height,
              const Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Choose Bank Name",
                          style: primaryTextStyle(
                              color: Banking_TextColorSecondary,
                              size: 16,
                              fontFamily: fontRegular)),
                      Row(
                        children: [
                          Text("The Same Bank",
                              style: primaryTextStyle(
                                  color: Banking_TextColorPrimary,
                                  size: 16,
                                  fontFamily: fontRegular)),
                          const Icon(Icons.keyboard_arrow_right,
                              size: 30, color: Banking_greyColor),
                        ],
                      ).onTap(
                        () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) => const CustomDialog(),
                          );
                        },
                      ),
                    ],
                  ),
                  20.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Choose Beneficiary",
                          style: primaryTextStyle(
                              color: Banking_TextColorSecondary,
                              size: 16,
                              fontFamily: fontRegular)),
                      Row(
                        children: [
                          Text("John Smith",
                              style: primaryTextStyle(
                                  color: Banking_TextColorPrimary,
                                  size: 16,
                                  fontFamily: fontRegular)),
                          const Icon(Icons.keyboard_arrow_right,
                              size: 30, color: Banking_greyColor),
                        ],
                      ),
                    ],
                  ),
                  20.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Account Number",
                          style: primaryTextStyle(
                              color: Banking_TextColorSecondary,
                              size: 16,
                              fontFamily: fontRegular)),
                      Text("123 456 789",
                          style: primaryTextStyle(
                              color: Banking_TextColorPrimary,
                              size: 16,
                              fontFamily: fontRegular)),
                    ],
                  ),
                  const Divider(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Bank",
                          style: primaryTextStyle(
                              color: Banking_TextColorSecondary,
                              size: 16,
                              fontFamily: fontRegular)),
                      Text(Banking_lbl_app_Name,
                          style: primaryTextStyle(
                              color: Banking_TextColorPrimary,
                              size: 16,
                              fontFamily: fontRegular)),
                    ],
                  ),
                  const Divider(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Branch",
                          style: primaryTextStyle(
                              color: Banking_TextColorSecondary,
                              size: 16,
                              fontFamily: fontRegular)),
                      Text("Ahmedabad",
                          style: primaryTextStyle(
                              color: Banking_TextColorPrimary,
                              size: 16,
                              fontFamily: fontRegular)),
                    ],
                  ),
                  const Divider(height: 24),
                  Text("Transfer Info",
                      style: primaryTextStyle(
                          color: Banking_TextColorSecondary,
                          size: 14,
                          fontFamily: fontRegular)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Amount",
                          style: primaryTextStyle(
                              color: Banking_TextColorSecondary,
                              size: 16,
                              fontFamily: fontRegular)),
                      Text("\$1000",
                          style: primaryTextStyle(
                              color: Banking_TextColorPrimary,
                              size: 16,
                              fontFamily: fontRegular)),
                    ],
                  ),
                  const Divider(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Message",
                          style: primaryTextStyle(
                              color: Banking_TextColorSecondary,
                              size: 16,
                              fontFamily: fontRegular)),
                      Text("Rental Car Fee",
                          style: primaryTextStyle(
                              color: Banking_TextColorPrimary,
                              size: 16,
                              fontFamily: fontRegular)),
                    ],
                  ),
                  const Divider(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Fee Transaction",
                          style: primaryTextStyle(
                              color: Banking_TextColorSecondary,
                              size: 16,
                              fontFamily: fontRegular)),
                      Text("\$10",
                          style: primaryTextStyle(
                              color: Banking_TextColorPrimary,
                              size: 16,
                              fontFamily: fontRegular)),
                    ],
                  ),
                  const Divider(height: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("A OTP code has been send to your phone",
                          style: primaryTextStyle(
                              color: Banking_TextColorSecondary,
                              size: 14,
                              fontFamily: fontRegular)),
                      EditText(text: "Enter OTP", isPassword: false),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(Banking_lbl_Resend,
                                style: primaryTextStyle(
                                    size: 18, fontFamily: fontRegular))
                            .onTap(() {}),
                      ),
                      8.height,
                      Text("Use Face ID to verify transaction",
                          style: primaryTextStyle(
                              color: Banking_TextColorSecondary,
                              size: 14,
                              fontFamily: fontRegular)),
                      Image.asset(Banking_ic_face_id,
                              color: Banking_Primary, height: 40, width: 40)
                          .center()
                          .paddingOnly(top: 16, bottom: 16),
                    ],
                  ).visible(isGetOtp == true),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Save this Beneficiary",
                          style: primaryTextStyle(
                              color: Banking_TextColorSecondary,
                              size: 16,
                              fontFamily: fontRegular)),
                      Switch(
                        value: isSwitch,
                        onChanged: (value) {
                          setState(() {
                            isSwitch = value;
                            if (kDebugMode) {
                              print(isSwitch);
                            }
                          });
                        },
                        activeTrackColor: Banking_Primary.withOpacity(0.5),
                        activeColor: Banking_Primary,
                      ),
                    ],
                  ).visible(isGetOtp == false),
                  const Divider(height: 24),
                  16.height,
                  BankingButton(
                      textContent: isGetOtp == true
                          ? Banking_lbl_Confirm
                          : Banking_lbl_Get_OTP,
                      onPressed: () {
                        setState(
                          () {
                            isGetOtp = true;
                            tapCount = tapCount + 1;
                            tappedConfirm();
                          },
                        );
                      }).visible(isSwitch == true),
                  24.height,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDialog extends StatelessWidget {
  const CustomDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }
}

dialogContent(BuildContext context) {
  return Container(
    padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
    decoration: boxDecorationWithRoundedCorners(
        borderRadius: BorderRadius.circular(10),
        backgroundColor: Banking_whitePureColor),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        8.height,
        Text(Banking_lbl_Same_Bank,
                style: primaryTextStyle(
                    color: Banking_TextColorSecondary,
                    size: 16,
                    fontFamily: fontRegular))
            .onTap(() {
          finish(context);
        }),
        8.height,
        Divider(thickness: 1.0, color: Banking_greyColor.withOpacity(0.5)),
        8.height,
        Text(Banking_lbl_Other_Bank,
                style: primaryTextStyle(
                    color: Banking_TextColorSecondary,
                    size: 16,
                    fontFamily: fontRegular))
            .onTap(() {
          finish(context);
        }),
        8.height,
        Divider(thickness: 1.0, color: Banking_greyColor.withOpacity(0.5)),
        8.height,
        Text(Banking_lbl_Credit_Card,
                style: primaryTextStyle(
                    color: Banking_TextColorSecondary,
                    size: 16,
                    fontFamily: fontRegular))
            .onTap(() {
          finish(context);
        }),
        8.height,
      ],
    ),
  );
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'banking_colors.dart';
import 'banking_constants.dart' as banking_constant;
import 'banking_constants.dart';

// ignore: must_be_immutable
class BankingButton extends StatefulWidget {
  static String tag = '/BankingButton';
  final dynamic textContent;
  final VoidCallback onPressed;
  bool isStroked = false;
  double height = 50.0;
  double radius = 5.0;

  BankingButton(
      {Key? key, required this.textContent,
      required this.onPressed,
      this.isStroked = false,
      this.height = 45.0,
      this.radius = 5.0}) : super(key: key);

  @override
  BankingButtonState createState() => BankingButtonState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('textContent', textContent));
  }
}

class BankingButtonState extends State<BankingButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        height: widget.height,
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
        alignment: Alignment.center,
        child: Text(
          widget.textContent.toUpperCase(),
          style: primaryTextStyle(
              color:
                  widget.isStroked ? Banking_Primary : Banking_whitePureColor,
              size: 18,
              fontFamily: fontMedium),
        ).center(),
      ),
    );
  }
}

Widget bankingOption(var icon, var heading, Color color) {
  return Container(
    padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
    child: Row(
      children: <Widget>[
        Row(
          children: <Widget>[
            Image.asset(icon, color: color, height: 20, width: 20),
            16.width,
            Text(heading,
                style: primaryTextStyle(
                    color: Banking_TextColorPrimary, size: 18)),
          ],
        ).expand(),
        const Icon(Icons.keyboard_arrow_right, color: Banking_TextColorSecondary),
      ],
    ),
  );
}

class TopCard extends StatelessWidget {
  final String name;
  final String acno;
  final String bal;

  const TopCard({Key? key, required this.name, required this.acno, required this.bal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width(),
      height: context.height(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              children: [
                const Icon(Icons.account_balance_wallet,
                        color: Banking_Primary, size: 30)
                    .paddingOnly(top: 8, left: 8),
                Text(name, style: primaryTextStyle(size: 18))
                    .paddingOnly(left: 8, top: 8)
                    .expand(),
                const Icon(Icons.info, color: Banking_greyColor, size: 20)
                    .paddingOnly(right: 8)
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Account Number", style: secondaryTextStyle(size: 16))
                  .paddingOnly(left: 8, top: 8, bottom: 8),
              Text(acno,
                      style: primaryTextStyle(color: Banking_TextColorYellow))
                  .paddingOnly(right: 8, top: 8, bottom: 8),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Balance", style: secondaryTextStyle(size: 16))
                  .paddingOnly(left: 8, top: 8, bottom: 8),
              Text(bal,
                      style:
                          primaryTextStyle(color: Banking_TextLightGreenColor))
                  .paddingOnly(right: 8, top: 8, bottom: 8),
            ],
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class EditText extends StatefulWidget {
  bool isPassword; // Explicit type annotation
  bool isSecure; // Explicit type annotation
  double fontSize; // Explicit type annotation
  Color textColor; // Explicit type annotation
  String fontFamily; // Explicit type annotation
  String text; // Explicit type annotation
  int maxLine; // Explicit type annotation
  TextEditingController? mController;

  EditText({Key? key,
    this.fontSize = textSizeNormal,
    this.textColor = Banking_TextColorPrimary,
    this.fontFamily = fontRegular,
    this.isPassword = true,
    this.text = "",
    this.isSecure = false,
    this.mController,
    this.maxLine = 1,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return EditTextState();
  }
}

class EditTextState extends State<EditText> {
  @override
  Widget build(BuildContext context) {
    if (!widget.isSecure) {
      return TextField(
          controller: widget.mController,
          obscureText: widget.isPassword,
          cursorColor: Banking_Primary,
          maxLines: widget.maxLine,
          style: TextStyle(
              fontSize: widget.fontSize,
              color: Banking_TextColorPrimary,
              fontFamily: widget.fontFamily),
          decoration: InputDecoration(
            hintText: widget.text,
            hintStyle: const TextStyle(fontSize: textSizeMedium),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Banking_Primary, width: 0.5),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Banking_TextColorSecondary, width: 0.5),
            ),
          ));
    } else {
      return TextField(
        controller: widget.mController,
        obscureText: widget.isPassword,
        cursorColor: Banking_Primary,
        style: TextStyle(
            fontSize: widget.fontSize,
            color: Banking_TextColorPrimary,
            fontFamily: widget.fontFamily),
        decoration: InputDecoration(
            hintText: widget.text,
            hintStyle: const TextStyle(fontSize: textSizeMedium),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  widget.isPassword = !widget.isPassword;
                });
              },
              child: Icon(
                widget.isPassword ? Icons.visibility : Icons.visibility_off,
                color: Banking_TextColorSecondary,
              ),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Banking_TextColorSecondary, width: 0.5),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Banking_Primary, width: 0.5),
            )),
      );
    }
  }
}

Widget headerView(var title, double height, BuildContext context, dynamic nb_utils) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Icon(
            Icons.chevron_left,
            size: 25,
            color: Banking_blackColor,
          ).paddingAll(6).paddingOnly(top: banking_constant.spacingStandard).onTap(() {
            finish(context);
          }).paddingOnly(
              left: banking_constant.spacingStandard,
              right: banking_constant.spacingStandardNew,
              top: banking_constant.spacingStandardNew,
              bottom: nb_utils.SpacingStandard),
        ],
      ),
      Text(title,
              style: primaryTextStyle(
                  color: Banking_TextColorPrimary,
                  size: 30,
                  fontFamily: fontBold))
          .paddingOnly(left: banking_constant.spacingStandardNew, right: banking_constant.spacingStandard),
    ],
  );
}

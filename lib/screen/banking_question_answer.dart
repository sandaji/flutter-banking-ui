import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../model/banking_model.dart';
import '../utils/banking_colors.dart';
import '../utils/banking_constants.dart';
import '../utils/banking_data_generator.dart';
import '../utils/banking_strings.dart';

class BankingQuestionAnswer extends StatefulWidget {
  static var tag = "/BankingQuestionAnswer";

  const BankingQuestionAnswer({Key? key}) : super(key: key);

  @override
  _BankingQuestionAnswerState createState() => _BankingQuestionAnswerState();
}

class _BankingQuestionAnswerState extends State<BankingQuestionAnswer> {
  late List<BankingQuesAnsModel> mList;

  @override
  void initState() {
    super.initState();
    mList = bankingQuestionList();
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
                  Text(Banking_lbl_Questions_Answers,
                      style: boldTextStyle(
                          size: 30, color: Banking_TextColorPrimary)),
                ],
              ),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: mList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Question(mList[index], index);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class Question extends StatefulWidget {
  final BankingQuesAnsModel model;

  const Question(this.model, int index, {Key? key}) : super(key: key);

  @override
  QuestionState createState() => QuestionState();
}

class QuestionState extends State<Question> {
  bool visibility = false;
  late BankingQuesAnsModel model;

  @override
  void initState() {
    super.initState();
    model = widget.model;
  }

  void _changed() {
    setState(() {
      visibility = !visibility;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 8),
      decoration: boxDecorationWithShadow(
          backgroundColor: Banking_whitePureColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: defaultBoxShadow()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    10.width,
                    Text(widget.model.ques,
                        style: primaryTextStyle(
                            color: Banking_TextColorPrimary, size: 16))
                        .expand(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Icon(
                        visibility ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                        size: 30,
                        color: Banking_greyColor,
                      ),
                    )
                  ],
                ).onTap(() {
                  _changed();
                }),
              ],
            ),
          ),
          Visibility(
            visible: visibility,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Text(
                Banking_lbl_Walk1SubTitle,
                textAlign: TextAlign.justify,
                style: primaryTextStyle(
                    size: 16,
                    color: Banking_TextColorSecondary,
                    fontFamily: fontRegular),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

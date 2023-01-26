import 'package:flutter/material.dart';
import 'package:xam/presentation/utility/constant.dart' as constants;
import 'package:xam/presentation/utility/size_config.dart';
import 'package:xam/presentation/widget/alert_dialog/custom_alert_dialog.dart';
import 'package:xam/presentation/widget/custom_text_style.dart';

Widget buildAlertDialog(context, String message, String body) {
  return Padding(
    padding:
        EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal * 2.7),
    child: GestureDetector(
      onTap: () {
        showOkAlertDialog(
          context,
          message,
          body,
          constants.capClose,
          constants.appBarColor,
          () {},
        );
      },
      child: Icon(
        Icons.help_outline_outlined,
        color: constants.pallet3,
        size: SizeConfig.safeBlockHorizontal * 4.5,
      ),
    ),
  );
}

showOkAlertDialog(
  BuildContext context,
  String title,
  String description,
  String confirmBtnTxt,
  Color confirmColor,
  Function onConfirmClicked,
) {
  Widget confirmButton = TextButton(
    child: Text(
      confirmBtnTxt,
      style: TextStyle(
          color: confirmColor,
          fontSize: SizeConfig.safeBlockHorizontal * 3.06,
          letterSpacing: 1),
    ),
    onPressed: () {
      Navigator.of(context).pop();
      onConfirmClicked.call();
    },
  );

  CustomDialog alert = CustomDialog(
    title: Center(child: Text(title, style: textStyle3(context))),
    content: Text(description,
        textAlign: TextAlign.center, style: textStyle3(context)),
    actions: [
      Column(
        children: [
          SizedBox(
            height: 1.0,
            child: Center(
              child: Container(
                margin: const EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                height: 5.0,
                color: Colors.black38,
              ),
            ),
          ),
          confirmButton
        ],
      ),
    ],
  );
  showCustomDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showLoadingDialog(BuildContext context, String message) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (_) => WillPopScope(
      onWillPop: () async => false,
      child: AlertDialog(
        contentPadding: EdgeInsets.zero,
        content: Padding(
          padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 4.5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 3.6),
                child: Text(
                  constants.wordLoading,
                  textAlign: TextAlign.center,
                  style: textStyle4(context),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 3.06),
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  style: textStyle3(context),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 2.7),
                child: const CircularProgressIndicator(
                  color: constants.appBarColor,
                  strokeWidth: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

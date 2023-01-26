import 'package:flutter/material.dart';
import 'package:xam/presentation/utility/constant.dart' as constants;
import 'package:xam/presentation/utility/size_config.dart';

TextStyle textStyle1(context) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 2.7,
    color: constants.pallet2,
    letterSpacing: .5,
  );
}

TextStyle textStyle2(context) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 3.06,
    color: constants.pallet2,
    letterSpacing: .5,
  );
}

TextStyle textStyle3(context) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 3.24,
    color: constants.pallet2,
    letterSpacing: .5,
  );
}

TextStyle textStyle4(context) {
  SizeConfig().init(context);

  return TextStyle(
      fontSize: SizeConfig.safeBlockHorizontal * 3.8,
      color: constants.pallet3,
      letterSpacing: .1,
      fontWeight: FontWeight.w700);
}

TextStyle textStyle5(context) {
  SizeConfig().init(context);
  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 4.5,
    color: constants.pallet2,
    letterSpacing: .5,
  );
}

TextStyle textStyle6(context) {
  SizeConfig().init(context);
  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 6.3,
    color: constants.pallet2,
    letterSpacing: .5,
  );
}

TextStyle textDark1(context) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 2.7,
    color: constants.pallet1,
    letterSpacing: .5,
  );
}

TextStyle textDark2(context) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 3.06,
    color: constants.pallet1,
    letterSpacing: .5,
  );
}

TextStyle textDark3(context) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 3.6,
    color: constants.pallet1,
    letterSpacing: .5,
  );
}

TextStyle textDark4(context) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 4.05,
    color: constants.pallet1,
    letterSpacing: .5,
  );
}

TextStyle textDark5(context) {
  SizeConfig().init(context);
  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 4.5,
    color: constants.pallet1,
    letterSpacing: .5,
  );
}

TextStyle textLight1(context) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 2.7,
    color: constants.pallet5,
    letterSpacing: .5,
  );
}

TextStyle textLight2(context) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 3.06,
    color: constants.pallet5,
    letterSpacing: .5,
  );
}

TextStyle textLight3(context) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 3.6,
    color: constants.pallet5,
    letterSpacing: .5,
  );
}

TextStyle textLight4(context) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 4.05,
    color: constants.pallet5,
    letterSpacing: .5,
  );
}

TextStyle textLight5(context) {
  SizeConfig().init(context);
  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 4.5,
    color: constants.pallet5,
    letterSpacing: .5,
  );
}

TextStyle textLight6(context) {
  SizeConfig().init(context);
  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 6.3,
    color: constants.pallet5,
    letterSpacing: .5,
  );
}

TextStyle textBold1(context) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 2.7,
    color: constants.pallet2,
    letterSpacing: .5,
    fontWeight: FontWeight.w500,
  );
}

TextStyle textBold2(context) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 3.06,
    color: constants.pallet2,
    letterSpacing: .5,
    fontWeight: FontWeight.w500,
  );
}

TextStyle textBold3(context) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 3.6,
    color: constants.pallet2,
    letterSpacing: .5,
    fontWeight: FontWeight.w500,
  );
}

TextStyle textBold4(context) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 4.05,
    color: constants.pallet2,
    letterSpacing: .5,
    fontWeight: FontWeight.w500,
  );
}

TextStyle textBold5(context) {
  SizeConfig().init(context);
  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 4.5,
    color: constants.pallet2,
    letterSpacing: .5,
    fontWeight: FontWeight.w500,
  );
}

TextStyle textBold6(context) {
  SizeConfig().init(context);
  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 5.4,
    color: constants.pallet2,
    letterSpacing: .5,
    fontWeight: FontWeight.w500,
  );
}

TextStyle textColored1(context, Color color, FontWeight fontWeight) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 2.7,
    color: color,
    letterSpacing: .5,
    fontWeight: fontWeight,
  );
}

TextStyle textColored2(context, Color color, FontWeight fontWeight) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 3.06,
    color: color,
    letterSpacing: .5,
    fontWeight: fontWeight,
  );
}

TextStyle textColored3(context, Color color, FontWeight fontWeight) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 3.6,
    color: color,
    letterSpacing: .5,
    fontWeight: fontWeight,
  );
}

TextStyle textColored4(context, Color color, FontWeight fontWeight) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 4.05,
    color: color,
    letterSpacing: .5,
    fontWeight: fontWeight,
  );
}

TextStyle textColored5(context, Color color, FontWeight fontWeight) {
  SizeConfig().init(context);
  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 4.5,
    color: color,
    letterSpacing: .5,
    fontWeight: fontWeight,
  );
}

TextStyle textLarge1(context) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 5.4,
    color: constants.pallet2,
    letterSpacing: 1,
  );
}

TextStyle textLarge2(context) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 6.3,
    color: constants.pallet2,
    letterSpacing: 1,
  );
}

TextStyle textLarge3(context) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 7.2,
    color: constants.pallet2,
    letterSpacing: 1,
  );
}

TextStyle textLarge4(context) {
  SizeConfig().init(context);

  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 8.1,
    color: constants.pallet2,
    letterSpacing: 1,
  );
}

TextStyle textLarge5(context) {
  SizeConfig().init(context);
  return TextStyle(
    fontSize: SizeConfig.safeBlockHorizontal * 9,
    color: constants.pallet2,
    letterSpacing: 1,
  );
}

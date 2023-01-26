import 'package:xam/presentation/utility/constant.dart' as constants;
import 'package:xam/presentation/utility/size_config.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPress;
  final String text;
  final double textSize;
  final double letterSpacing;
  final Color color;
  final FontWeight fontWeight;
  final double? height;
  final double? paddingVertical;
  const CustomButton({
    Key? key,
    required this.onPress,
    required this.text,
    this.textSize = 20,
    this.letterSpacing = 0,
    this.color = constants.pallet4,
    this.fontWeight = FontWeight.w500,
    this.height,
    this.paddingVertical = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: SizeConfig.safeBlockHorizontal * 16.2,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
            elevation: 3,
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            )),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: paddingVertical!),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: textSize,
                letterSpacing: 1,
                color: constants.pallet5,
                fontWeight: fontWeight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// https://www.youtube.com/watch?v=-eNm8pNYmjo

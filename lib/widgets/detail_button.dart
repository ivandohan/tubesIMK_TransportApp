import 'package:flutter/widgets.dart';
import 'package:transport_app/misc/colors.dart';
import 'package:transport_app/widgets/app_text.dart';

class DetailButton extends StatelessWidget {
  final Color backgroundColor;
  final double size;
  final Color borderColor;
  String? text;
  IconData? icon;
  double? textSize;
  Color? textColor;

  DetailButton(
      {Key? key,
      required this.backgroundColor,
      required this.size,
      required this.borderColor})
      : super(key: key);

  DetailButton.icon(
      {Key? key,
      this.icon,
      required this.backgroundColor,
      required this.size,
      required this.borderColor})
      : super(key: key);

  DetailButton.text(
      {Key? key,
      this.text,
      this.textSize,
      this.textColor,
      required this.backgroundColor,
      required this.borderColor,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
      ),
      child: icon == null
          ? Center(
              child: AppText(
              text: text!,
              size: textSize!,
              color: textColor!,
            ))
          : Center(
              child: Icon(
              icon,
              color: AppColors.mainColor,
            )),
    );
  }
}

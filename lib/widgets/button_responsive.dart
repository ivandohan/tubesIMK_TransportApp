import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transport_app/misc/colors.dart';
import 'package:transport_app/widgets/app_text.dart';

class ButtonResponsive extends StatelessWidget {
  bool? isResponsive;
  double? width;
  String? text;

  ButtonResponsive({Key? key, this.width, this.isResponsive = false})
      : super(key: key);
  ButtonResponsive.text(
      {Key? key, this.width, this.isResponsive = false, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive! ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive!
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            text != null
                ? Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: AppText(
                      text: text!,
                      color: Colors.white,
                    ),
                  )
                : const Text(''),
            Image.asset('img/button-one.png'),
          ],
        ),
      ),
    );
  }
}

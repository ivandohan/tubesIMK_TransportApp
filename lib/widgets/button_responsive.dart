import 'package:flutter/cupertino.dart';
import 'package:transport_app/misc/colors.dart';

class ButtonResponsive extends StatelessWidget {
  double? width;
  ButtonResponsive({Key? key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset('img/button-one.png')],
      ),
    );
  }
}

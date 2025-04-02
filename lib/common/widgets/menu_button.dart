import 'package:flutter/material.dart';
import 'package:nour_w_tazkieh/common/style/app_text_styles.dart';
import '../../util/constants/app_strings.dart';

class MenuButton extends StatelessWidget {
  String imagePath;
  String text;

  MenuButton(
      {required this.imagePath,
      required this.text,
      super.key}); //this. is imp to actually get the values from others

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
          Text(
            text,
            style: AppTextStyles.bodyText,
          ),
        ],
      ),
    );
  }
}

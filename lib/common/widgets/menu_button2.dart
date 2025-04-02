import 'package:flutter/material.dart';
import 'package:nour_w_tazkieh/common/style/app_text_styles.dart';
import 'package:nour_w_tazkieh/util/constants/app_constants.dart';
import '../../util/constants/app_strings.dart';

class MenuButton2 extends StatelessWidget {
  String imagePath;
  String text;

  MenuButton2({required this.imagePath, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('elem');
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click, // Change cursor to pointer
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              // to solve the overflow
              child: Container(
                padding: EdgeInsets.all(AppConstants.padding),
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              text,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

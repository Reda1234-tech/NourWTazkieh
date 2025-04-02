// separating the main app design from config file in main

import 'package:flutter/material.dart';
import 'package:nour_w_tazkieh/common/style/app_text_styles.dart';
import 'package:nour_w_tazkieh/util/constants/app_constants.dart';
import 'package:nour_w_tazkieh/util/constants/app_strings.dart';
import 'localization/app_localizations.dart';
import './common/widgets/menu_button.dart';
import './common/widgets/menu_button2.dart';

class App extends StatelessWidget {
  App({super.key});

  static final Map<String, String> menuTxtBtn = const {
    // need to be updated to handle localization
    'Quran': AppStrings.quranBtnImg,
    'Azkar': AppStrings.azkarBtnImg,
    'Tsabeeh': AppStrings.tsabeehBtnImg,
    'Tsabeeh2': AppStrings.tsabeehBtnImg,
    'Tsabeeh3': AppStrings.tsabeehBtnImg,
    'Tsabeeh4': AppStrings.tsabeehBtnImg,
  };

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;

    final List<MenuButton2> items = List.generate(
        menuTxtBtn.keys.length,
        (index) => MenuButton2(
            imagePath: menuTxtBtn.values.elementAt(index),
            text: menuTxtBtn.keys.elementAt(index)));

    return Scaffold(
      body: Container(
          // width: 100,
          // height: 100,
          padding: EdgeInsets.all(AppConstants.padding),
          child: ListView(
            children: [
              Container(
                height: AppConstants.sectionHeight,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                ),
                child: Text(
                  "Quick Actions Section",
                  style: AppTextStyles.heading1,
                ),
              ),
              SizedBox(
                height: AppConstants.sepHeightlow,
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                ),
                child: Text(
                  "Prayer Section",
                  style: AppTextStyles.heading1,
                ),
              ),
              SizedBox(
                height: AppConstants.sepHeightlow,
              ),
              SizedBox(
                // need exanded to be able to view the items
                height: 200,
                child: GridView.builder(
                  physics:
                      NeverScrollableScrollPhysics(), // Disables scrolling inside the grid
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5, // Number of columns
                    crossAxisSpacing: 10, // Space between columns
                    mainAxisSpacing: 10, // Space between rows
                    childAspectRatio: 1, // Aspect ratio of each item
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return items.elementAt(index);
                  },
                ),
              ),
              SizedBox(
                height: AppConstants.sepHeightlow,
              ),
              Container(
                height: AppConstants.sectionHeight,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                ),
                child: Text(
                  "Reminders Section",
                  style: AppTextStyles.heading1,
                ),
              ),
              SizedBox(
                height: AppConstants.sepHeightlow,
              ),
              Container(
                height: AppConstants.sectionHeight,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                ),
                child: Text(
                  "Names Section",
                  style: AppTextStyles.heading1,
                ),
              ),
              SizedBox(
                height: AppConstants.sepHeightlow,
              ),
              Container(
                height: AppConstants.sectionHeight,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                ),
                child: Text(
                  "Other Section",
                  style: AppTextStyles.heading1,
                ),
              ),
              SizedBox(
                height: AppConstants.sepHeightlow,
              ),
            ],
          )),
    );
  }
}

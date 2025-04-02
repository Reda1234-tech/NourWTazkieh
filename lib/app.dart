// separating the main app design from config file in main

import 'package:flutter/material.dart';
import 'package:nour_w_tazkieh/common/style/app_text_styles.dart';
import 'package:nour_w_tazkieh/data/repositories/menu_data.dart';
import 'package:nour_w_tazkieh/util/constants/app_constants.dart';
import 'localization/app_localizations.dart';
import './common/widgets/menu_button.dart';
import './common/widgets/menu_button2.dart';

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;

    List<MenuButton2> items = MenuData.menuItems;

    return Scaffold(
      body: Container(
          // width: 100,
          // height: 100,
          padding: EdgeInsets.all(AppConstants.padding),
          child: ListView(
            children: [
              // Quick Actions Section
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
              // Prayer Section
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
              // Menu Buttons Section
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
              // Reminders Section
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
              // Names Section
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
              // Other Section
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

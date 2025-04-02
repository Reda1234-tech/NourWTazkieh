import '../../common/widgets/menu_button.dart';
import '../../common/widgets/menu_button2.dart';
import '../../util/constants/app_strings.dart';

class MenuData {
  static final Map<String, String> menuTxtBtn = const {
    // need to be updated to handle localization
    'Quran': AppStrings.quranBtnImg,
    'Azkar': AppStrings.azkarBtnImg,
    'Tsabeeh': AppStrings.tsabeehBtnImg,
    'Tsabeeh2': AppStrings.tsabeehBtnImg,
    'Tsabeeh3': AppStrings.tsabeehBtnImg,
    'Tsabeeh4': AppStrings.tsabeehBtnImg,
  };

  static final List<MenuButton2> menuItems = List.generate(
      menuTxtBtn.keys.length,
      (index) => MenuButton2(
          imagePath: menuTxtBtn.values.elementAt(index),
          text: menuTxtBtn.keys.elementAt(index)));
}

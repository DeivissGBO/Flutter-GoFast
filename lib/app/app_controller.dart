import 'package:flutter/material.dart';
import 'package:flutter_gofast/app/core/theme/app_theme_dark.dart';
import 'package:flutter_gofast/app/core/theme/app_theme_light.dart';
import 'package:mobx/mobx.dart';

import 'core/interfaces/theme_app_interface.dart';
part 'app_controller.g.dart';

class AppController = AppControllerBase with _$AppController;

abstract class AppControllerBase with Store {
  @observable
  IThemeAppInterface themeApp = AppThemeLight();
  @action
  setThemeData(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.dark:
        themeApp = AppThemeDark();
        break;

      default:
        themeApp = AppThemeLight();
        break;
    }
  }
}

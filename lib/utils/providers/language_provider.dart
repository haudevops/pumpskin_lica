import 'package:flutter/material.dart';
import 'package:pumpskin_lica/utils/constants.dart';
import 'package:pumpskin_lica/utils/prefs_const.dart';
import 'package:pumpskin_lica/utils/prefs_util.dart';

class LanguageProvider with ChangeNotifier {
  late Locale _currentLocale;

  Locale get currentLocale => _currentLocale;

  LanguageProvider() {
    _getLanguageLocal();
  }

  void _getLanguageLocal() async {
    String? languageLocal = PrefsUtil.getString(PrefsCache.LANGUAGE_CHANGE);
    if (languageLocal != null && languageLocal.isNotEmpty) {
      _currentLocale = Locale(languageLocal);
    } else {
      _currentLocale = Locale(Constants.VIETNAMESE);
    }
  }

  void changeLocale(String _locale) {
    this._currentLocale = new Locale(_locale);
    PrefsUtil.putString(PrefsCache.LANGUAGE_CHANGE, _locale);
    notifyListeners();
  }
}

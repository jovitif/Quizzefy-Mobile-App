import 'package:quizzify/l10n/en_US/en_us_translation.dart';
import 'package:quizzify/l10n/pt_BR/pt_br_translation.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    'pt_BR': ptBr,
    'en_US': enUS
  };
}

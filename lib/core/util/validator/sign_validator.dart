import 'package:easy_localization/easy_localization.dart';
import 'package:kartal/kartal.dart';
import 'package:shartflix/generated/locale_keys.g.dart';

final class SignValidator {
  String? emailValidator(String? text) {
    if (text == null || text.trim().isEmpty) {
      return LocaleKeys.sign_empty_email.tr();
    }
    if (!text.ext.isValidEmail) {
      return LocaleKeys.sign_wrong_email_syntax.tr();
    }
    return null;
  }

  String? passwordValidator(String? text) {
    if (text == null || text.trim().isEmpty) {
      return LocaleKeys.sign_empty_password.tr();
    }
    if (text.trim().length < 6) {
      return LocaleKeys.sign_min_length.tr();
    }
    return null;
  }

  String? isEmpty(String? text) {
    if (text == null || text.trim().isEmpty) {
      return LocaleKeys.generic_empty_field.tr();
    }
    return null;
  }
}

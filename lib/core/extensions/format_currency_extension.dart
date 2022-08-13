import 'package:brasil_fields/brasil_fields.dart';

extension FormatCurrencyExtension on double {
  String obterReal() {
    return UtilBrasilFields.obterReal(this);
  }
}

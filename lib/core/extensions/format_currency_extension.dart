import 'package:brasil_fields/brasil_fields.dart';

extension FormatCurrencyExtension on double {
  String obterReal({
    required double value,
  }) {
    return UtilBrasilFields.obterReal(value);
  }
}

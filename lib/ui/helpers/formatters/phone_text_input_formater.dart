import 'package:flutter/services.dart';

class PhoneTextInputFormatter extends TextInputFormatter {
  final int _whichNumber;
  PhoneTextInputFormatter(this._whichNumber);

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final int newTextLength = newValue.text.length;
    int selectionIndex = newValue.selection.end;
    int usedSubstringIndex = 0;
    final StringBuffer newText = StringBuffer();
    switch (_whichNumber) {
      case 1:
        {
          if (newTextLength >= 1 && newTextLength <= 10) {
            newText.write('(');
            if (newValue.selection.end >= 1) selectionIndex++;
          }
          if (newTextLength >= 4 && newTextLength <= 10) {
            newText.write(
                '${newValue.text.substring(0, usedSubstringIndex = 3)}) ');
            if (newValue.selection.end >= 3) selectionIndex += 2;
          }
          if (newTextLength >= 7 && newTextLength <= 10) {
            newText.write(
                '${newValue.text.substring(3, usedSubstringIndex = 6)}-');
            if (newValue.selection.end >= 6) selectionIndex++;
          }
          break;
        }
      case 55:
        {
          if (newTextLength >= 1 && newTextLength <= 11) {
            newText.write('(');
            if (newValue.selection.end >= 1) selectionIndex++;
          }
          if (newTextLength >= 3 && newTextLength <= 11) {
            newText.write(
                '${newValue.text.substring(0, usedSubstringIndex = 2)}) ');
            if (newValue.selection.end >= 2) selectionIndex += 2;
          }
          if (newTextLength >= 7 && newTextLength <= 11) {
            newText.write(
                '${newValue.text.substring(2, usedSubstringIndex = 7)}-');
            if (newValue.selection.end >= 8) selectionIndex++;
          }
          break;
        }
    }
    if (newTextLength >= usedSubstringIndex) {
      newText.write(newValue.text.substring(usedSubstringIndex));
    }
    return TextEditingValue(
      text: newText.toString(),
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}

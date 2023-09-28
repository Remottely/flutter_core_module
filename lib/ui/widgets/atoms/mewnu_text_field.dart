import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class MewnuTextField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final void Function()? onEditingComplete;
  final TextInputAction? inputAction;
  final String? label;
  final String? hint;
  final String? text;
  final String? note;
  final bool expands;
  final bool showBorder;
  final int? minLines;
  final int? maxLines;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization? textCapitalization;
  final TextInputType? textInputType;
  final bool obscureText;
  final bool enabled;
  final bool loading;
  final FocusNode? focusNode;
  final TextStyle? textStyle;
  final String? errorText;
  final Widget? action;
  final Widget? prefix;
  final bool enableInteractiveSelection;

  const MewnuTextField(
      {super.key,
      this.controller,
      this.prefix,
      this.inputAction,
      this.inputFormatters,
      this.textCapitalization,
      this.obscureText = false,
      this.enabled = true,
      this.showBorder = true,
      this.textInputType,
      this.onChanged,
      this.label,
      this.action,
      this.note,
      this.text,
      this.hint,
      this.textStyle,
      this.expands = false,
      this.minLines = 1,
      this.maxLines = 1,
      this.loading = false,
      this.errorText,
      this.onFieldSubmitted,
      this.focusNode,
      this.onEditingComplete,
      this.enableInteractiveSelection = true});

  final bool _showPwd = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (label != null)
          Text(
            label!,
            style: TextStyle(
              fontSize: 18.0,
              color: Theme.of(context).custom.colors.linearGradientColor3,
              fontWeight: FontWeight.bold,
            ),
          ),
        TextField(
          onEditingComplete: onEditingComplete,
          minLines: minLines,
          maxLines: maxLines,
          autocorrect: false,
          enabled: enabled,
          expands: expands,
          focusNode: focusNode,
          inputFormatters: inputFormatters,
          controller: controller,
          onSubmitted: onFieldSubmitted,
          style: textStyle ??
              Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: !enabled
                        ? Theme.of(context).custom.colors.textSubtitle2Color
                        : null,
                  ),
          cursorColor: Theme.of(context).custom.colors.linearGradientColor3,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          onChanged: onChanged,
          textInputAction: inputAction ?? TextInputAction.done,
          keyboardType: textInputType ?? TextInputType.text,
          enableInteractiveSelection: enableInteractiveSelection,
          obscureText: obscureText && !_showPwd,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(right: 10.0),
            prefix: prefix,
            helperText: note,
            helperStyle: const TextStyle(fontSize: 13.0),
            errorText: errorText,
            hintText: hint,
            errorMaxLines: 2,
            errorStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).custom.colors.formErrorColor,
                ),
            hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).custom.colors.textSubtitle2Color,
                ),
            focusedBorder: showBorder
                ? UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color:
                          Theme.of(context).custom.colors.linearGradientColor3,
                    ),
                  )
                : InputBorder.none,
            disabledBorder: showBorder
                ? UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).custom.colors.disabledColor,
                    ),
                  )
                : InputBorder.none,
            enabledBorder: showBorder
                ? UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.5,
                      color: Theme.of(context).custom.colors.textSubtitle2Color,
                    ),
                  )
                : InputBorder.none,
            errorBorder: showBorder
                ? UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.5,
                      color: Theme.of(context).custom.colors.formErrorColor,
                    ),
                  )
                : InputBorder.none,
          ),
        ),
      ],
    );
  }
}

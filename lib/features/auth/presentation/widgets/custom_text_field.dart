//TODO: Expline why we need to use FocusNode and why we need to use setState in the listener

import 'package:flutter/material.dart';
import 'package:fruit_hub/core/theme/app_border_radius.dart';
import 'package:fruit_hub/core/theme/app_colors.dart';
import 'package:fruit_hub/core/theme/app_text_styles.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.controller,
    this.validator,
    this.showPasswordToggle = false,
    this.keyboardType,
    this.textInputAction,
    this.onFieldSubmitted,
    this.onChanged,
  });

  final String hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool showPasswordToggle;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String>? onChanged;

  static const BorderRadius _borderRadius = AppBorderRadius.small;

  static final TextSelectionThemeData _selectionTheme = TextSelectionThemeData(
    cursorColor: AppColors.grayscale[900],
    selectionColor: AppColors.grayscale[900],
    selectionHandleColor: AppColors.grayscale[900],
  );

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final FocusNode _focusNode = FocusNode();

  bool _obscureText = false;
  bool _hasInteracted = false;

  @override
  void initState() {
    super.initState();

    _obscureText = widget.showPasswordToggle;
    _hasInteracted = widget.controller?.text.isNotEmpty ?? false;

    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  bool get _shouldHighlight => _focusNode.hasFocus || _hasInteracted;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: CustomTextFormField._borderRadius,
      borderSide: const BorderSide(color: AppColors.textFieldBorderColor),
    );

    return TextSelectionTheme(
      data: CustomTextFormField._selectionTheme,
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        focusNode: _focusNode,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        onFieldSubmitted: widget.onFieldSubmitted,
        obscureText: widget.showPasswordToggle && _obscureText,
        autocorrect: !widget.showPasswordToggle,
        enableSuggestions: !widget.showPasswordToggle,
        onChanged: (value) {
          setState(() {
            _hasInteracted = value.isNotEmpty;
          });

          widget.onChanged?.call(value);
        },
        style: AppTextStyles.bodyBaseBold.copyWith(
          color: AppColors.grayscale[900],
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: _shouldHighlight
              ? AppColors.textFieldBorderColor
              : AppColors.textFieldFillColor,
          hintText: widget.hintText,
          hintStyle: AppTextStyles.bodySmallBold.copyWith(
            color: AppColors.grayscale[400],
          ),
          border: border,
          enabledBorder: border,
          focusedBorder: border,
          suffixIcon: widget.showPasswordToggle
              ? Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                      _obscureText
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: AppColors.mainBlack40,
                    ),
                  ),
                )
              : null,
        ),
      ),
    );
  }
}

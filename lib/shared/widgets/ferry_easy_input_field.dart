import 'package:flutter/material.dart';

import '../shared_exports.dart';

export 'package:flutter/material.dart';

class FEInputField extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;
  final Widget? leading;
  final Widget? trailing;
  final void Function()? trailingTapped;
  final bool password;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool isEnabled;
  final bool isReadOnly;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final TextCapitalization? textCapitalization;

  const FEInputField({
    super.key,
    required this.controller,
    this.placeholder = '',
    this.leading,
    this.trailing,
    this.trailingTapped,
    this.password = false,
    this.validator,
    this.keyboardType,
    this.isEnabled = true,
    this.isReadOnly = false,
    this.onTap,
    this.onChanged,
    this.textCapitalization = TextCapitalization.none,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: textCapitalization!,
      onTap: onTap,
      onChanged: onChanged,
      readOnly: isReadOnly,
      enabled: isEnabled,
      controller: controller,
      obscureText: password,
      validator: validator,
      keyboardType: keyboardType,
      style: const TextStyle(
        height: 1,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        hintText: placeholder,
        hintStyle: const TextStyle(
          color: kcMediumGrayColor,
          fontWeight: FontWeight.normal,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kcPrimaryColor),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kcPrimaryColor),
        ),
        prefixIcon: leading,
        suffixIcon: trailing != null
            ? GestureDetector(
                onTap: trailingTapped,
                child: trailing,
              )
            : null,
      ),
    );
  }
}

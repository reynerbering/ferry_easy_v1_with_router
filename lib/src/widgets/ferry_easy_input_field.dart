import 'package:flutter/material.dart';

export 'package:flutter/material.dart';
export 'ferry_easy_input_field.dart';

class FerryEasyInputField extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;
  final Widget? leading;
  final Widget? trailing;
  final void Function()? trailingTapped;
  final bool password;

  const FerryEasyInputField({
    super.key,
    required this.controller,
    this.placeholder = '',
    this.leading,
    this.trailing,
    this.trailingTapped,
    this.password = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(height: 1),
      obscureText: password,
      decoration: InputDecoration(
        hintText: placeholder,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        prefix: leading,
        suffix: trailing != null
            ? GestureDetector(
                onTap: trailingTapped,
                child: trailing,
              )
            : null,
      ),
    );
  }
}

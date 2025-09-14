import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.hint,
    this.controller,
    this.keyboardType,
    this.isObscure = false,
    this.enabled = true,
    this.onChanged,
    this.prefixIcon,
    this.textInputAction,
    this.validator,
    this.onFieldSubmitted,
  });

  final String? hint;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool isObscure;
  final bool enabled;
  final Widget? prefixIcon;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isVisibleObscure = false;

  @override
  void initState() {
    isVisibleObscure = widget.isObscure;
    super.initState();
  }

  void _isPassword() {
    setState(() {
      isVisibleObscure = !isVisibleObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSubmitted,
      obscureText: isVisibleObscure,
      enabled: widget.enabled,
      style: context.textTheme.labelLarge?.copyWith(color: Colors.white),
      onChanged: widget.onChanged,

      decoration: InputDecoration(
        errorStyle: context.textTheme.labelLarge?.copyWith(
          color: Colors.redAccent,
          fontWeight: FontWeight.w500,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        fillColor: const Color(0x33FFFFFF),
        prefixIcon: widget.prefixIcon,
        prefixIconColor: Colors.white,
        suffixIcon: _suffixIcon(widget.isObscure),
        hintText: widget.hint,
        hintStyle: context.textTheme.labelLarge?.copyWith(
          color: Colors.grey,
        ),

        border: const OutlineInputBorder(borderRadius: AppRadius.medium),
        filled: true,
      ),
    );
  }

  Widget? _suffixIcon(bool isVisibleObscure) {
    return isVisibleObscure
        ? IconButton(
            onPressed: _isPassword,
            icon: this.isVisibleObscure
                ? const Icon(Icons.visibility_off, color: Colors.white)
                : const Icon(Icons.visibility, color: Colors.white),
          )
        : null;
  }
}

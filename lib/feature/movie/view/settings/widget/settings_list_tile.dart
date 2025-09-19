import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';

class SettingsListTile extends StatelessWidget {
  const SettingsListTile({
    required this.iconData,
    required this.text,
    required this.onTap,
    this.iconColor,
    super.key,
  });
  final IconData iconData;
  final String text;
  final VoidCallback onTap;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: iconColor ?? context.colorScheme.errorContainer,
      ),
      title: Text(
        text,
        style: context.textTheme.headlineSmall?.copyWith(
          fontWeight: FontWeight.bold,
          color: context.colorScheme.errorContainer,
        ),
      ),
      onTap: onTap,
    );
  }
}

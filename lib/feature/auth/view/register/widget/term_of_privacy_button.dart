import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/generated/locale_keys.g.dart';

final isTermApprovedProvider = StateProvider<bool>((ref) => false);

class TermOfPrivacyButton extends ConsumerWidget {
  const TermOfPrivacyButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isChecked = ref.watch(isTermApprovedProvider);
    final theme = context.colorScheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () =>
              ref.read(isTermApprovedProvider.notifier).state = !isChecked,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: isChecked ? theme.errorContainer : Colors.transparent,
              border: Border.all(color: theme.errorContainer),
              borderRadius: BorderRadius.circular(4),
            ),
            child: isChecked
                ? Icon(Icons.check, size: 16, color: theme.onTertiary)
                : null,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: context.textTheme.labelLarge?.copyWith(
                color: theme.errorContainer,
                fontWeight: FontWeight.w100,
              ),
              text: LocaleKeys.sign_agreement_message.tr(),
              children: [
                TextSpan(
                  text: ' ${LocaleKeys.sign_agreement_message_two.tr()}',
                  style: context.textTheme.labelLarge?.copyWith(
                    decoration: TextDecoration.underline,
                    decorationColor: theme.errorContainer,
                    fontWeight: FontWeight.bold,
                    color: theme.errorContainer,
                  ),
                ),
                TextSpan(
                  text: ' ${LocaleKeys.sign_agreement_message_three.tr()}',
                  style: context.textTheme.labelLarge?.copyWith(
                    color: theme.errorContainer,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

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
              color: isChecked ? Colors.white : Colors.transparent,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(4),
            ),
            child: isChecked
                ? const Icon(Icons.check, size: 16, color: Colors.black)
                : null,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: context.textTheme.labelLarge?.copyWith(
                color: Colors.white,
              ),
              text: LocaleKeys.sign_agreement_message.tr(),
              children: [
                TextSpan(
                  text: ' ${LocaleKeys.sign_agreement_message_two.tr()}',
                  style: context.textTheme.labelLarge?.copyWith(
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: ' ${LocaleKeys.sign_agreement_message_three.tr()}',
                  style: context.textTheme.labelLarge?.copyWith(
                    color: Colors.white,
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

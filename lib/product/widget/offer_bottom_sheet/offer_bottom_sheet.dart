import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/product/widget/offer_bottom_sheet/all_jeton_button.dart';
import 'package:shartflix/product/widget/offer_bottom_sheet/bonus_card.dart';
import 'package:shartflix/product/widget/offer_bottom_sheet/coins_card.dart';
import 'package:shartflix/product/widget/offer_bottom_sheet/offer_gradient_background.dart';
import 'package:shartflix/product/widget/offer_bottom_sheet/offer_title.dart';

class OfferBottomSheet {
  static Future<void> show(BuildContext context) async {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(CustomAppSizes.large),
        ),
      ),
      isScrollControlled: true,
      builder: (context) {
        return ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: FractionallySizedBox(
            heightFactor: 0.8,
            child: OfferGradientBackground(
              child: Padding(
                padding: const EdgeInsets.all(CustomAppSizes.medium),
                child: ListView.separated(
                  itemCount: 4,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 8),
                  itemBuilder: (context, index) {
                    if (index == 0) return const OfferTitle();
                    if (index == 1) return const BonusCard();
                    if (index == 2) return const CoinsCard();
                    if (index == 3) {
                      return AllJetonButton(onPressed: () {});
                    }
                    return const SizedBox();
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

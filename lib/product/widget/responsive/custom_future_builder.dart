import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/generated/locale_keys.g.dart';

class CustomFutureBuilder<T> extends StatelessWidget {
  const CustomFutureBuilder({
    required this.future,
    required this.child,
    super.key,
  });

  final Future<T> future;
  final Widget Function(T data) child;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<T>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError || snapshot.data == null) {
          return Center(
            child: Text(
              '${LocaleKeys.an_error_occurred.tr()} : ${snapshot.error}',
              style: context.textTheme.headlineSmall,
            ),
          );
        } else {
          return child(snapshot.data as T);
        }
      },
    );
  }
}

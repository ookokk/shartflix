import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';

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
              //  '${LocaleKeys.error.tr()} : ${snapshot.error}',
              '',
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

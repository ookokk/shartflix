import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:shartflix/product/widget/responsive/no_connection_view.dart';

class MainBuild {
  MainBuild._();

  static final Connectivity _connectivity = Connectivity();

  static Widget build(BuildContext context, Widget? child) {
    return StreamBuilder<ConnectivityResult>(
      stream: _connectivity.onConnectivityChanged.map(
        (list) => list.first,
      ),
      builder: (context, snapshot) {
        final isConnected = snapshot.data != ConnectivityResult.none;
        if (!isConnected) {
          return const NoConnectionView();
        }
        return child ?? const SizedBox();
      },
    );
  }
}

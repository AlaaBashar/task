import 'package:flutter/material.dart';

extension TextStyleExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}

extension NavigatorExtension on BuildContext {
  Future<T> go<T>(Widget screen) async {
    return await Navigator.push(
      this,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  void pop<T>([T? result]) {
    if (result == null) {
      Navigator.pop(this);
    } else {
      Navigator.pop(this, result);
    }
  }

  Future<T> goRemove<T>(Widget screen) async {
    return await Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(
        builder: (_) => screen,
        settings: RouteSettings(
          arguments: screen,
        ),
      ),
      (Route<dynamic> route) => false,
    );
  }
}

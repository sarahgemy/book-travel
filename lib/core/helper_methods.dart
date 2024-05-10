import 'package:flutter/material.dart';

Future<dynamic> navigateTo(context, {page, bool leaveHistory = true}) {
  return Navigator.pushAndRemoveUntil(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
          (route) => leaveHistory);
}

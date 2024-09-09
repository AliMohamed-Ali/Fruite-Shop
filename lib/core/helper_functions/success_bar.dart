import 'package:flutter/material.dart';

void showSuccessBar(BuildContext context, String message, [Color? color]) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message,
          style: const TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600)),
      backgroundColor: color ?? const Color(0xFFDFF0D8),
    ),
  );
}

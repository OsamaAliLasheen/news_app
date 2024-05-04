import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  final String? errorMessage;
  const ErrorMessage({
    super.key,
    required this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      errorMessage!,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}

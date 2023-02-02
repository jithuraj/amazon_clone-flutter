import 'package:flutter/material.dart';

showErrorModalSheet({required BuildContext? context, required String message}) {
  showModalBottomSheet(
    context: context!,
    builder: (context) => Padding(
      padding: const EdgeInsets.all(28.0),
      child: Text(
        message,
        textAlign: TextAlign.center,
      ),
    ),
  );
}

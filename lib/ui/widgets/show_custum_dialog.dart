import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showCustumDialog(BuildContext ctx, String title, String description) {
  showDialog(
    context: ctx,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: Text(description),
      actions: [
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text("OK"),
        ),
      ],
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:temopedia/styles/TextStyles.dart';
import 'package:temopedia/styles/Theme.dart';

class ErrorDialog extends StatelessWidget {
  final dynamic error;

  ErrorDialog(this.error);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: MyColors.background,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(21)),
      title: Text("Error", style: TextStyles.lightText),
      content: Text("$error", style: TextStyles.lightText),
      actions: <Widget>[
        FlatButton(
          child: Text("Close", style: TextStyles.lightText),
          onPressed: () => Navigator.of(context).pop(),
        )
      ],
    );
  }
}

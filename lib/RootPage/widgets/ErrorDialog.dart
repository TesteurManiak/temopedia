import 'package:flutter/material.dart';
import 'package:temopedia/styles/Theme.dart';

class ErrorDialog extends StatelessWidget {
  final dynamic error;
  final TextStyle _textStyle = TextStyle(color: MyColors.lightFont);

  ErrorDialog(this.error);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: MyColors.background,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(21)),
      title: Text("Error", style: _textStyle),
      content: Text("$error", style: _textStyle),
      actions: <Widget>[
        FlatButton(
          child: Text("Close", style: _textStyle),
          onPressed: () => Navigator.of(context).pop(),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:temopedia/styles/Theme.dart';

class LoadingPage extends StatelessWidget {
  final String loadingText;

  LoadingPage({this.loadingText = "Loading..."});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/logo.png"),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                loadingText,
                style: TextStyle(
                  color: MyColors.lightFont,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CircularProgressIndicator(
              backgroundColor: Colors.transparent,
              valueColor: AlwaysStoppedAnimation<Color>(MyColors.lightFont),
            ),
          ],
        ),
      ),
    );
  }
}

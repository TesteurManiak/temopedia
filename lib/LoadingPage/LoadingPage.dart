import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Temopedia"),
            CircularProgressIndicator(
              backgroundColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

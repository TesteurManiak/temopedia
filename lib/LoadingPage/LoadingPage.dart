import 'package:flutter/material.dart';
import 'package:temopedia/styles/TextStyles.dart';
import 'package:temopedia/styles/Theme.dart';

class LoadingPage extends StatelessWidget {
  final Stream<String> loadingTextStream;

  LoadingPage(this.loadingTextStream);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(MyImages.logo),
            StreamBuilder<String>(
              stream: loadingTextStream,
              builder: (context, snapshot) =>
                  Text('${snapshot.data}...', style: TextStyles.lightBold),
            ),
            SizedBox(height: 10),
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

import 'package:flutter/material.dart';
import 'package:magdsoft_task/background_page.dart';

class SplashPage extends BackgroundPage {
  @override
  Widget buildContent(BuildContext context) {
    return Center(
      child: Image(
        image: AssetImage('assets/images/logo_png.png'),
      ),
    );
  }
}

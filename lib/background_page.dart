import 'package:flutter/material.dart';

abstract class BackgroundPage extends StatelessWidget {
  Widget buildContent(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: orientation == Orientation.portrait
                      ? BoxFit.fill
                      : BoxFit.cover,
                  image: AssetImage('assets/images/background.png')),
            ),
            child: buildContent(context));
      },
    );
  }
}

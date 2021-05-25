import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:magdsoft_task/background_page.dart';

var pages = [
  Page(
    title: 'مرحبا بك',
    subtitle:
        'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
    imageLocation: 'assets/images/price_image.png',
  ),
  Page(
    title: 'تصفية متقدمة',
    subtitle:
        'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق ',
    imageLocation: 'assets/images/filter_rafiki.png',
  ),
  Page(
    title: 'الدفع عبر الانترنت',
    subtitle:
        'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
    imageLocation: 'assets/images/mobile_payments.png',
  )
];

class SliderPage extends BackgroundPage {
  @override
  Widget buildContent(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          itemBuilder: (context, index) {
            return pages[index];
          },
          itemCount: pages.length,
        ),
        Padding(
          padding: const EdgeInsets.all(64.0),
          child: Container(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: 300,
              child: TextButton(
                  onPressed: () {
                    return;
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  child: Text(
                    'متابعة',
                    style: Theme.of(context).accentTextTheme.headline5,
                  )),
            ),
          ),
        )
      ],
    );
  }
}

class Page extends StatelessWidget {
  final String title;

  final String subtitle;

  final String imageLocation;

  const Page({Key key, this.title, this.subtitle, this.imageLocation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 32.0,
        right: 32.0,
        top: 64.0,
        bottom: 64.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline4,
            textDirection: TextDirection.rtl,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.headline6,
            textDirection: TextDirection.rtl,
          ),
          Center(
            child: Container(
                margin: const EdgeInsets.all(16.0),
                child: Image(image: AssetImage(imageLocation))),
          ),
        ],
      ),
    );
  }
}

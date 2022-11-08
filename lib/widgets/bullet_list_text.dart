import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BulletListText extends StatelessWidget {
  BulletListText(this.texts);
  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    for (var text in texts) {
      // Add list item
      widgetList.add(BulletListTextItem(text));
      // Add space between items
      widgetList.add(SizedBox(height: 0.3.h));
    }

    return Column(children: widgetList);
  }
}

class BulletListTextItem extends StatelessWidget {
  BulletListTextItem(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "• ",
          style: TextStyle(fontSize: 12.sp),
        ),
        Expanded(
          child: Text(text),
        ),
      ],
    );
  }
}

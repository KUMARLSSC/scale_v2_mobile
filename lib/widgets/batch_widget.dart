import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';

class BatchTab extends StatefulWidget {
  final void Function()? onPressed;
  final Widget? tabBarView;
  final Widget? searchBar;
  final String? text1;
  final String? text2;
  BatchTab(
      {Key? key,
      this.onPressed,
      this.tabBarView,
      this.searchBar,
      this.text1,
      this.text2})
      : super(key: key);
  @override
  _BatchTabState createState() => _BatchTabState();
}

class _BatchTabState extends State<BatchTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          ButtonsTabBar(
            backgroundColor: blueButtonColor,
            unselectedBackgroundColor: Colors.grey[300],
            unselectedLabelStyle: TextStyle(color: Colors.black),
            labelStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                text: this.widget.text1,
              ),
              Tab(
                text: this.widget.text2,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Container(
              child: this.widget.searchBar,
            ),
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: this.widget.tabBarView),
          ),
        ],
      ),
    );
  }
}

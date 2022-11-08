import 'package:flutter/material.dart';
import 'package:scaleindia/constants/app_colors.dart';

class TopTabBar extends StatefulWidget {
  final List<Widget> tabs;
  final List<Widget> tabBarView;
  final int length;
  final bool busy;
  const TopTabBar(
      {required this.tabBarView,
      required this.tabs,
      required this.length,
      this.busy = false,
      Key? key})
      : super(key: key);
  @override
  _TopTabBarState createState() => _TopTabBarState();
}

class _TopTabBarState extends State<TopTabBar> with TickerProviderStateMixin {
  late TabController _topTabController;

  @override
  void initState() {
    super.initState();

    _topTabController =
        new TabController(length: this.widget.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _topTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TabBar(
              controller: _topTabController,
              indicatorWeight: 4,
              indicatorColor: widget.busy ? blueTextColor : whiteTextColor,
              labelColor: blueTextColor,
              unselectedLabelColor: blackTextColor,
              isScrollable: true,
              tabs: this.widget.tabs),
        ),
        Expanded(
          child: TabBarView(
              controller: _topTabController, children: this.widget.tabBarView),
        )
      ],
    );
  }
}

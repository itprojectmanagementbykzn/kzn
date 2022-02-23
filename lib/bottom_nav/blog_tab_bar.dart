import 'package:flutter/material.dart';
import 'package:kzn/bottom_nav/history.dart';
import 'package:kzn/bottom_nav/mistake.dart';
import 'business.dart';
import 'construction.dart';
import 'pm.dart';

class BlogTab extends StatefulWidget {
  @override
  _BlogTabState createState() => _BlogTabState();
}

class _BlogTabState extends State<BlogTab>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  Widget getTabBar() {
    return TabBar(controller: tabController,
        indicatorColor: Colors.indigo[900],
        labelColor: Colors.indigo[900],
        labelStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        tabs: [
            Tab(icon: Icon(Icons.manage_accounts_outlined, color: Colors.indigo[900]), text: 'PM'),
            Tab(icon: Icon(Icons.construction_outlined, color: Colors.indigo[900]), text: 'CM'),
            Tab(icon: Icon(Icons.business_center_outlined, color: Colors.indigo[900]), text: 'Business'),
            Tab(icon: Icon(Icons.cancel_presentation, color: Colors.indigo[900]), text: 'Mistake'),
            Tab(icon: Icon(Icons.book_outlined, color: Colors.indigo[900]), text: 'History'),
    ]);
  }

  Widget getTabBarPages() {
    return TabBarView(controller: tabController, children: <Widget>[
          PM(),
          Construction(),
          Business(),
          Mistake(),
          History(),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: getTabBar(),
          ),
        ),
        body: getTabBarPages( ));
  }
}



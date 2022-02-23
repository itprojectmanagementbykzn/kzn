import 'package:kzn/bottom_nav/blog_tab_bar.dart';
import 'package:kzn/bottom_nav/gallery.dart';
import 'package:flutter/material.dart';
import 'package:kzn/bottom_nav/newclass_enroll.dart';
import 'package:kzn/bottom_nav/vlogs.dart';
import 'package:kzn/providers/blog_provider.dart';
import 'package:kzn/ui/routes/main_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'vlogs.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentindex = 2;

  List<Widget> _widgetOption= <Widget>[
    BlogTab(),
    Vlogs(),
    MainRoute(),
    Gallery(),
    NewClass(),

  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Provider.of<BlogProvider>(context, listen: false).fetchWpPostsForPM();
    Provider.of<BlogProvider>(context, listen: false).fetchWpPostsForConstructionPM();
    Provider.of<BlogProvider>(context, listen: false).fetchWpPostsForBusiness();
    Provider.of<BlogProvider>(context, listen: false).fetchWpPostsForHistory();
    Provider.of<BlogProvider>(context, listen: false).fetchWpPostsForMistake();
    Provider.of<BlogProvider>(context, listen: false).fetchWpPostsForNewClass();
    // Provider.of<VlogProvider>(context, listen: false).fetchVlogList();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOption.elementAt(_currentindex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Blog'),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video), label: 'Vlog'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Learn Now'),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Album'),
          BottomNavigationBarItem(label: 'Enroll Courses',
            icon: Stack(children: <Widget>[
              Icon(Icons.notifications_active),
              new Positioned(
                right: 0,
                child: new Container(
                  padding: EdgeInsets.all(1),
                  decoration: new BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 14,
                    minHeight: 14,
                  ),
                  child: new Text('New',style: new TextStyle(color: Colors.white,fontSize: 8),
                      textAlign: TextAlign.center),),),],),),],
        currentIndex: _currentindex,
        selectedItemColor: Colors.indigo[900],
        unselectedItemColor: Colors.grey,
        onTap: _changeItem,
      ),
    );
  }

  void _changeItem(int value) {
    setState(() {
      _currentindex = value;

    });
  }
}

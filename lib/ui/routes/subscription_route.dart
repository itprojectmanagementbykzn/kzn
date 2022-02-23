import 'package:flutter/material.dart';

class SubscriptionRoute extends StatefulWidget {
  static const routeName = '/subscription_route';
  @override
  _SubscriptionRouteState createState() => _SubscriptionRouteState();
}

class _SubscriptionRouteState extends State<SubscriptionRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Subscription"),
      ),
      body: Center(
        child: Text("To see this course, please subscribe."),
      ),
      // floatingActionButton: AppFab(),
    );
  }
}

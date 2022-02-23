import 'package:flutter/material.dart';

class AboutRoute extends StatefulWidget {
  static final String routeName = "/about_route";
  @override
  _AboutRouteState createState() => _AboutRouteState();
}

class _AboutRouteState extends State<AboutRoute> {
  final Color tileColor = Colors.redAccent;
  final Color iconColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text("About", style: TextStyle(fontWeight: FontWeight.w700,
            fontSize: 14.0,
            color: Colors.black
        )),),
      // appBar: AppBar(title: Text("About")),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 8, right: 8),
        child: SingleChildScrollView(child: Text(
            '''
          KZN Learning School was founded as Business and Project Management school on March, 2017. 
          
Approved as the Project Management School in Myanmar in 2017, the School has produced about 1000 alumni, 
and has played a significant role in fashion education in Myanmar for about 5 years.

KZN Learning School is situated in Yangon, Myanmar. 

The School is a gathering place for Project Management industry, providing access to information on the latest Business and Project Management trends around the world.

KZN Learning School has produced many great Project Managers and Business Managers working on the world stage. 

We have helped raise Myanmar Business and Project Management to the world’s top level, and continue to send out talent to the forefront of the Business and Project Management world.
          
          '''
        )),
      ),

    );
  }
}



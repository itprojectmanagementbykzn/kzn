import 'package:flutter/material.dart';
import 'package:kzn/providers/user_provider.dart';
import 'package:kzn/ui/routes/login_route.dart';
import 'package:provider/provider.dart';

class UserInfo extends StatefulWidget {
  @override
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: (Provider.of<UserProvider>(context, listen: true).user == null) ?
        Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.indigo[900],
            ),
            child: Text("Login",style: TextStyle(color: Colors.white)),
            onPressed: (){
              Navigator.pushReplacementNamed(context, LoginRoute.routeName);
            },
            

          ),
        ) :
        Column(
          children: [
          Container(
            child: new Image.asset(
              'assets/images/app_icon.png',
              height: 70.0,
            ),
          ),
          new Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(""+Provider.of<UserProvider>(context, listen: true).user.username,
                  style: TextStyle(color: Colors.indigo[900])
              ),
            ),
          ),
          ],

        ),
    );
  }
}

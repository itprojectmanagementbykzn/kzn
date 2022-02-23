import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Vlogs extends StatefulWidget {

  @override
  _VlogsState createState() => _VlogsState();
}

class _VlogsState extends State<Vlogs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const WebView(
          initialUrl: 'https://kznlearning-95c302.ingress-comporellon.easywp.com/vlogs',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Gallery extends StatefulWidget {

  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const WebView(
          initialUrl: 'https://kznlearning-95c302.ingress-comporellon.easywp.com/gallery',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
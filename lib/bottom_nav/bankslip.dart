import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class BankSlip extends StatefulWidget {

  @override
  _BankSlipState createState() => _BankSlipState();
}

class _BankSlipState extends State<BankSlip> {
  InAppWebViewController webViewController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    webViewController?.loadUrl(urlRequest: URLRequest(url: Uri.parse("https://kznlearning-95c302.ingress-comporellon.easywp.com/studentenrollment")));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            title: Text("            Student Enrollment", style: TextStyle(fontSize: 16.0,
                  color: Colors.black
              )),

        ),
        // body: const WebView(
        //   initialUrl: 'https://hisandhermyanmar-95b62f.ingress-erytho.easywp.com/bankslip',
        //   javascriptMode: JavascriptMode.unrestricted,
        // ),
        body:  InAppWebView(
            initialUrlRequest:
            URLRequest(url: Uri.parse("https://kznlearning-95c302.ingress-comporellon.easywp.com/studentenrollment")),

            initialOptions: InAppWebViewGroupOptions(
              crossPlatform: InAppWebViewOptions(
                
                mediaPlaybackRequiresUserGesture: true,
              ),
            ),
            onWebViewCreated: (InAppWebViewController controller) {
            },
            androidOnPermissionRequest: (InAppWebViewController controller, String origin, List<String> resources) async {
              return PermissionRequestResponse(resources: resources, action: PermissionRequestResponseAction.GRANT);
            }
        ),
      ),
    );
  }
}

// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';
import 'bankslip.dart';
import 'scroll_to_hide_widget.dart';

class NewClassEnroll extends StatefulWidget {
  final String imageUrl, title, desc;

  const NewClassEnroll({Key key, this.imageUrl, this.title, this.desc}) : super(key: key);
  // Post({required this.imageUrl,required this.title, required this.desc})

  @override
  _NewClassEnrollState createState() => _NewClassEnrollState();
}

class _NewClassEnrollState extends State<NewClassEnroll> {
  Widget postContent(htmlContent){
    return Html(
      data: htmlContent,
    );
  }

  ScrollController controller;

  @override
  void initState() {
    super.initState();

    controller = ScrollController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(widget.title, style: const TextStyle(fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: Colors.black),),
      ),

      body: SingleChildScrollView(
        controller: controller,
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Hero(tag: widget.imageUrl,
                  child: Image.network(widget.imageUrl))),
              // Text(widget.title, style: TextStyle(fontSize: 16),),
              postContent(widget.desc)],),
        ),
      ),

      bottomNavigationBar: ScrollToHideWidget(
        controller: controller,
        height: 50,
        child: Container(
          height: 60,
          width: double.infinity,
          // padding: EdgeInsets.all(16).copyWith(left: 0),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),),
                icon: Icon(
                    Icons.school_outlined, color: Colors.black),
                label: Text('Enroll Now', style: const TextStyle(fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),),
                onPressed: () async {
                  {Navigator.push(
                    context, MaterialPageRoute(builder: (context) => BankSlip()),);}
                },
              ),

              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),),
                icon: Icon(
                    Icons.phone_outlined, color: Colors.black),
                label: Text('Contact Us', style: const TextStyle(fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),),
                onPressed: () => launch("tel://09954055655"),
              ),
            ],

          ),

        ),
      ),
    );
  }
}

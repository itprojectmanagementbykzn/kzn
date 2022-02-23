import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';


class Post extends StatefulWidget {
  final String imageUrl, title, desc;

  const Post({Key key, this.imageUrl, this.title, this.desc}) : super(key: key);
  // Post({required this.imageUrl,required this.title, required this.desc})

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {

  Widget postContent(htmlContent){
    return Html(
      data: htmlContent,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(widget.title, style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold,
            color: Colors.black),),
      ),

      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Hero(tag: widget.imageUrl,
                  child: Image.network(widget.imageUrl))),
              // Text(widget.title, style: TextStyle(fontSize: 16),),
              SizedBox(height: 10),
              postContent(widget.desc)],),
        ),
      ),
    );
  }
}

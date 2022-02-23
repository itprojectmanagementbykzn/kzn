import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
class BlogProvider extends ChangeNotifier{

  Future<dynamic> PMPosts;
  Future<dynamic> ConstructionPMPosts;
  Future<dynamic> BusinessPosts;
  Future<dynamic> HistoryPosts;
  Future<dynamic> MistakePosts;
  Future<dynamic> newclassBlogPosts;

  Future<void> fetchWpPostsForPM() async {
    final response = await http.get(Uri.parse(
      "https://kznlearning-95c302.ingress-comporellon.easywp.com/index.php/wp-json/wp/v2/posts?_embed&per_page=100&categories=6&orderby=date&status=publish",
    ));
    PMPosts = Future.delayed(Duration.zero,(){
      return jsonDecode(response.body);
    });
    notifyListeners();
  }

  Future<void> fetchWpPostsForConstructionPM() async {
    final response = await http.get(Uri.parse(
      "https://kznlearning-95c302.ingress-comporellon.easywp.com/index.php/wp-json/wp/v2/posts?_embed&per_page=100&categories=11&orderby=date&status=publish",
    ));
    ConstructionPMPosts = Future.delayed(Duration.zero,(){
      return jsonDecode(response.body);
    });
    notifyListeners();
  }



  Future<void> fetchWpPostsForBusiness() async {
    final response = await http.get(Uri.parse(
      "https://kznlearning-95c302.ingress-comporellon.easywp.com/index.php/wp-json/wp/v2/posts?_embed&per_page=100&categories=7&orderby=date&status=publish",
    ));
    BusinessPosts = Future.delayed(Duration.zero,(){
      return jsonDecode(response.body);
    });
    notifyListeners();
  }

  Future<void> fetchWpPostsForHistory() async {
    final response = await http.get(Uri.parse(
      "https://kznlearning-95c302.ingress-comporellon.easywp.com/index.php/wp-json/wp/v2/posts?_embed&per_page=100&categories=8&orderby=date&status=publish",
    ));
    HistoryPosts = Future.delayed(Duration.zero,(){
      return jsonDecode(response.body);
    });
    notifyListeners();
  }

  Future<void> fetchWpPostsForMistake() async {
    final response = await http.get(Uri.parse(
      "https://kznlearning-95c302.ingress-comporellon.easywp.com/index.php/wp-json/wp/v2/posts?_embed&per_page=100&categories=10&orderby=date&status=publish",
    ));
    MistakePosts = Future.delayed(Duration.zero,(){
      return jsonDecode(response.body);
    });
    notifyListeners();
  }


  Future fetchWpPostsForNewClass() async {
    final response = await http.get(Uri.parse(
      "https://kznlearning-95c302.ingress-comporellon.easywp.com/index.php/wp-json/wp/v2/posts?_embed&per_page=100&categories=4&orderby=date&status=publish",
    ));

    newclassBlogPosts = Future.delayed(Duration.zero,(){
      return jsonDecode(response.body);
    });
    notifyListeners();
  }
}
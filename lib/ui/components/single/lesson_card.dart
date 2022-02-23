import 'package:flutter/material.dart';
import 'package:kzn/data/models/lesson.dart';
import 'package:kzn/providers/course_provider.dart';
import 'package:provider/provider.dart';

class LessonCard extends StatelessWidget {
  final Lesson lesson;
  LessonCard({this.lesson});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      child: InkWell(
        onTap: (){
          print("lessonCard.onTap");
          Provider.of<CourseProvider>(context,listen: false).setLessonDetail(lesson);
        },
        // child: Container(
        //   margin: EdgeInsets.all(8.0),
        //   padding: EdgeInsets.all(8.0),
        //   // decoration: BoxDecoration(
        //   //   borderRadius: BorderRadius.circular(8.0),
        //   //   gradient: LinearGradient(
        //   //     begin: Alignment.topRight,
        //   //     end: Alignment.bottomLeft,
        //   //     stops: [0.1, 0.5, 0.7, 0.9],
        //   //     colors: [
        //   //       Colors.yellow[800],
        //   //       Colors.yellow[700],
        //   //       Colors.yellow[600],
        //   //       Colors.yellow[400],
        //   //     ],
        //     ),
        //   ),
          //height: 50,
          child: Text(lesson.name, style: TextStyle(color: Colors.black),),
        // ),
      ),
    );
  }
}

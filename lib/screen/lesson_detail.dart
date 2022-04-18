import 'package:flutter/material.dart';

class LessonDetail extends StatelessWidget {
  final int? index;
  const LessonDetail({Key? key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson ${index! + 1}"),
      ),
      body: Center(
        child: Container(
          height: 50,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: const Offset(0.5, 3), // changes position of shadow
                ),
              ],
              color: Colors.pink),
          child: Center(
              child: Text(
            "Welcome From Lesson ${index! + 1}",
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}

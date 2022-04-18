import 'package:callbackexample/screen/lesson_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../state/products.dart';
import 'wish_list_screen.dart';

class HomeScreen extends StatelessWidget {
  // Instantiate our Products class using Get.put()
  final Products _p = Get.put(Products());

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kindacode.com'),
        ),
        body: SingleChildScrollView(
          child: Column(
              children: List.generate(
                  100,
                  (index) => Card(
                        // key: ValueKey(product.id),
                        margin: const EdgeInsets.all(5),
                        color: Colors.amberAccent,
                        child: ListTile(
                            title: Text("Lesson ${index + 1}"),
                            // subtitle: Text("\$${product.price.toStringAsFixed(2)}"),
                            // Use Obx(()=> to update icon color when product.inWishList change
                            trailing: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            LessonDetail(index: index)));
                              },
                              icon: const Icon(
                                Icons.arrow_right,
                                color: Colors.red,
                                size: 25,
                              ),
                            )),
                      ))),
        ));
  }
}

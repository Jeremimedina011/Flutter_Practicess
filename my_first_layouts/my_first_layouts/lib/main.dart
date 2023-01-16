import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_first_layouts/Models/model_recet.dart';
import 'package:my_first_layouts/data/receta_data.dart';
import 'package:my_first_layouts/widgest/buttom_column.dart';
import 'package:my_first_layouts/widgest/buttom_section.dart';
import 'package:my_first_layouts/widgest/cardImages.dart';
import 'package:my_first_layouts/widgest/text_widget.dart';
import 'package:my_first_layouts/widgest/title_section.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('MY AWESOME FIRST LAYOUT'),
          ),
          body: ListView(
            children: [
              SizedBox(height: 30),
              CarouselSlider.builder(
                itemCount: caruselImages.length,
                itemBuilder: (context, index, realIndex) {
                  final caruselImage = caruselImages[index];
                  return cardImages(
                    carruselImages: caruselImages[index],
                  );
                },
                options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Tiltlesection(),
              ButtomSection(),
              textWidgets(),
            ],
          ),
        ));
  }
}





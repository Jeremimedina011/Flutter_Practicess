import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/model_recet.dart';

class cardImages extends StatelessWidget {
  final receta carruselImages;
  const cardImages({super.key, required this.carruselImages});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 400,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
            onTap: () {},
            child: FadeInImage(
              placeholder: AssetImage("images/cargando.gif"),
              image: AssetImage(carruselImages.image),
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}
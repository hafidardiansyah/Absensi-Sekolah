import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/carousel_model.dart';

class CarouselWidget extends StatelessWidget {
  CarouselWidget({required this.carouselModel});
  CarouselModel carouselModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SvgPicture.asset(carouselModel.image!),
        Text(carouselModel.title!),
        Text(carouselModel.description!),
      ],
    );
  }
}

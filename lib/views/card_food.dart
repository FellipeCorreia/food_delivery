import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_components.dart';

class CardFoodData {
  final String title;
  final String description;
  final ImageProvider image;
  final ImageProvider imageBackground;
  final Color color;
  final Color titleColor;
  final Color descriptionColor;
  final Color containerColor;

  CardFoodData(
      {required this.title,
      required this.description,
      required this.image,
      required this.imageBackground,
      required this.color,
      required this.titleColor,
      required this.descriptionColor,
      required this.containerColor});
}

class CardFood extends StatelessWidget {
  final CardFoodData data;
  const CardFood({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: data.imageBackground, fit: BoxFit.cover),
      ),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: 340,
              child: BigTitle(
                title: data.title,
                color: data.titleColor,
              ),
              
            ),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 2,
                  height: 90,
                  color: data.containerColor,
                ),
                const SizedBox(width: 25,),
                SizedBox(
                  width: 300,
                  child: SmallDescription(
                      description: data.description, color: data.descriptionColor),
                )
              ],
            ),
            Image(
              width: 300,
              height: 300,
              image: data.image,
            ),
          ],
        ),
      ),
    );
  }
}

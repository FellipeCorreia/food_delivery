import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_components.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:food_delivery/views/card_food.dart';

class OnboardScreen extends StatelessWidget {
  final data = [
    CardFoodData(
      color: const Color(0xFF5DAA80),
      title: 'Encontre seu prato favorito',
      titleColor: Colors.black,
      description: 'Explore uma variedade de restaurantes e cardápios na palma da sua mão. Com um toque, seu prato favorito chega até você.',
      descriptionColor: Colors.black,
      image: const AssetImage('assets/images/01.png'),
      imageBackground: const AssetImage('assets/images/bg01.png'),
      containerColor: Colors.white,
    ),
    CardFoodData(
      color: const Color(0xFFF1BE48),
      title: 'Entrega Rápida e Segura',
      titleColor: Colors.black,
      description: 'Conte com entregas rápidas e seguras, seguindo todos os protocolos de higiene. Seu pedido, fresco e no tempo certo.',
      descriptionColor: Colors.black,
      image: const AssetImage('assets/images/02.png'),
      imageBackground: const AssetImage('assets/images/bg02.png'),
      containerColor: Colors.white,
    ),
    CardFoodData(
      color: const Color(0xFF9A37A7),
      title: 'Acompanhe  em Tempo Real',
      titleColor: Colors.white,
      description: 'Veja o status do seu pedido em cada etapa. Da cozinha à sua porta, acompanhe tudo em tempo real.',
      descriptionColor: Colors.white,
      image: const AssetImage('assets/images/03.png'),
      imageBackground: const AssetImage('assets/images/bg03.png'),
      containerColor: Colors.black,
    ),
  ];

  OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ConcentricPageView(
      colors: data.map((e) => e.color).toList(),
      itemBuilder: (int index) {
        return CardFood(data: data[index]);
      },
    ));
  }
}

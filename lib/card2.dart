import 'package:flutter/material.dart';
import 'package:foods_app/author_card.dart';
import 'package:foods_app/fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag5.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(26.0),
          ),
        ),
        child: Column(
          children: [
            const AuthorCard(
              authorName: 'Ivan Boginski',
              title: 'Smoothie Connoisseur',
              imageProvider: AssetImage('assets/author_katz.jpeg'),
            ),

            /// [Expanded] fills the remaining available space
            Expanded(

                /// [Stack] applies a widget to posisiton the texts on top of each other.
                child: Stack(
              children: [
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: Text(
                    'Recipe',
                    style: FooderlichTheme.lightTextTheme.headline1,
                  ),
                ),
                Positioned(
                  bottom: 70,
                  left: 16,
                  child: RotatedBox(
                    quarterTurns: 5,
                    child: Text(
                      'Shoothies',
                      style: FooderlichTheme.lightTextTheme.headline1,
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

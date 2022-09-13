import 'dart:math';

import 'package:flutter/material.dart';
import 'package:snake_2d_game/peice.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int upperBoundX = 1, upperBoundY = 1, lowerBoundX = 1, lowerBoundY = 1;
  double screenWidth = 1, screenHeight = 1;
  int step = 30;

  List<Offset> positions = []; // offset is pointer , its like x y cordinate

  //call this functions for find nearest big int like 900 insted of 908/906
  int getNearstTens(int num) {
    int output = 0;
    output = (num ~/ step) * step; // (408/20) = 20.4 * 20// 20 * 20
    if (output == 0) output += step;
    return output;
  }

  // random postions create

  Offset getRendomPositon() {
    Offset positions;
    int posX = Random().nextInt(upperBoundX) + lowerBoundX;
    int posY = Random().nextInt(upperBoundY) + lowerBoundY;
    positions =
        Offset(getNearstTens(posX).toDouble(), getNearstTens(posY).toDouble());
    return positions;
  }

  void draw() {
    if (positions.length == 0) {
      positions.add(getRendomPositon());
    }
  }

  /// draw something on the screen we need positons , then create objects
  List<Piece> getPieces() {
    final pieces = <Piece>[];
    draw();
    pieces.add(
      Piece(
        color: Colors.red,
        size: step,
        posX: positions[0].dx.toInt(),
        posY: positions[0].dy.toInt(),
      ),
    );
    return pieces;
  }

  @override
  Widget build(BuildContext context) {
    // screenHeight got full screen height

    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    lowerBoundY = step;
    lowerBoundX = step;

    upperBoundY = getNearstTens(screenHeight.toInt() - step);
    upperBoundX = getNearstTens(screenWidth.toInt() - step);

    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Stack(
          children: [
            Stack(
              children: getPieces(),
            )
          ],
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:snake_2d_game/peice.dart';

import 'direction.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int upperBoundX = 1, upperBoundY = 1, lowerBoundX = 1, lowerBoundY = 1;
  double screenWidth = 1, screenHeight = 1;
  int step = 30;
  int length = 5;

  List<Offset> positions = []; // offset is pointer , its like x y cordinate
  Direction direction = Direction.right;

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

    // adding all in the same postions
    while (length > positions.length) {
      //
      positions.add(positions[positions.length - 1]);
    }

    // change snake move
    for (var i = positions.length - 1; i > 0; i--) {
      positions[i] = positions[i - 1];
      // 4<-- 3 // 3 <-- 2 // 2 <--1
    }
    //------------------------------------ line 55-58 and 64 concern
    /// the positions change circle
    /// 1 st : 400 400 400 400 420
    /// 2nd : 400 400 400 420 440
    /// 3rd 400 400 420 440 460
    ///  this change because of this getNextPositon(positions[0]);
    positions[0] = getNextPositon(positions[0]);
  }

// snake move functions

  Offset getNextPositon(Offset position) {
    Offset nextPositions = Offset(0, 0);

    if (direction == Direction.right) {
      nextPositions = Offset(position.dx + step, position.dy + step);
    } else if (direction == Direction.left) {
      nextPositions = Offset(position.dx - step, position.dy);
    } else if (direction == Direction.up) {
      nextPositions = Offset(position.dx, position.dy - step);
    } else if (direction == Direction.down) {
      nextPositions = Offset(position.dx, position.dy + step);
    }

    return nextPositions;
  }

  /// draw something on the screen we need positons , then create objects
  List<Piece> getPieces() {
    final pieces = <Piece>[];
    draw();
    // creating max 5 point means length is 5;

    for (var i = 0; i < length; i++) {
      pieces.add(
        Piece(
          color: Colors.red,
          size: step,
          posX: positions[i].dx.toInt(),
          posY: positions[i].dy.toInt(),
        ),
      );
    }

/*
    //----------------------- Single postions 
    pieces.add(
        Piece(
          color: Colors.red,
          size: step,
          posX: positions[0].dx.toInt(),
          posY: positions[0].dy.toInt(),
        ),
      );
*/
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

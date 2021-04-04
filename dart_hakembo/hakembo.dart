import 'dart:io';

import 'dart:math';

enum Move { rock, paper, scissors }

void main() {
  final rng = Random();
  while (true) {
    stdout.write("Rock, paper or scissors? (r/p/s) ");
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;
      if (playerMove == 'r') playerMove = Move.rock;
      if (playerMove == 'p') playerMove = Move.paper;
      if (playerMove == 's') playerMove = Move.scissors;
      var aiMove = Move.values[rng.nextInt(3)];

      print("Selected: $input");
    } else if (input == 'q') {
      print('Game Over');
      break;
    } else {
      print('Invalid Input');
    }
  }
}

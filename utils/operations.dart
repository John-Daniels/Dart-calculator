import 'dart:io';
import 'dart:math';

num prompt(message) {
  print(message);
  dynamic myNum = stdin.readLineSync();

 return num.parse(myNum);
 
}

num sum(x, y) => x + y;
num minus(x, y) => x - y;
num divide(x, y) => x / y;
num times(x, y) => x * y;


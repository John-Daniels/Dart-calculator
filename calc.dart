import 'dart:io';
import 'dart:math';

import 'utils/operations.dart';

main() {



  num calcNum = 0;

  print('============= All-in-one Calculator =============');
  while (true) {
    print('*** type in two numbers i.e 2 and 3 ***  (${calcNum})');

    var x = prompt('1.)');
    var y = prompt('2.)');

    run(x, y);
    calcNum++;
  }
}

run(a, b) {
  List operations = ["sum", "minus", "times", "divide"];
  List values = [sum(a, b), minus(a, b), divide(a, b), times(a, b)];

  print('******************* results ****************');
  for (var i = 0; i < 4; i++) {
    print('               ${operations[i]}: ${values[i]}');
    print('');
  }
}

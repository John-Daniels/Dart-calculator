import '../utils/operations.dart';

startCalculator() {
  initCalc();

// i just found out that this code is totally not going to run
  while (true) {
    var ans = prompt('do you want to go again? (y/n)');
    if (ans == 'y') {
      initCalc();
    } else if (ans == 'n') {
      break;
    }
  }
}

initCalc() {
  num calcNum = 0;

  print('============= All-in-one Calculator =============');
  while (true) {
    print('*** type in two numbers i.e 2 and 3 ***  (${calcNum})');

    var x = prompt('1.)')!;
    var y = prompt('2.)')!;

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

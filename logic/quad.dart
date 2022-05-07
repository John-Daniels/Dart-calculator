import 'dart:math';
import '../utils/operations.dart';

startQuadraticEqnSolver() {
  initQuadSolver();

// i just found out that this code is totally not going to run
  while (true) {
    var ans = prompt('do you want to go again? (y/n)');
    if (ans == 'y') {
      initQuadSolver();
    } else if (ans == 'n') {
      break;
    }
  }
}

initQuadSolver() {
  print(' ============== quadratic eqn solver ==============');
  print('      *********** input a, b, and c ************');
  print('      ***********   i.e 1, 2, and 1 ************');

  while (true) {
    num a = prompt('a')!;
    num b = prompt('b')!;
    num c = prompt('c')!;

    run(a, b, c);
  }
}

discriminant(a, b, c) => pow(b, 2) + -4 * a * c;

// map
// (-b -+ sqrt(bsquared - 4ac))2*a
// bsquared - 4ac = discriminant

void run(a, b, c) {
  double num1 = -b + sqrt(discriminant(a, b, c));
  num denum1 = 2 * a;

  double num2 = -b - sqrt(discriminant(a, b, c));
  num denum2 = 2 * a;

  double x1 = num1 / denum1;
  double x2 = num2 / denum2;

  print("""
            ========== quad eqn solved ============
                the solution to the eqn are:
                      ${(x1 == x2) ? "X1=" + x1.toString() + "(twice)" : "X1=" + x1.toString() + " and " + "X2=" + x2.toString()}
      """);
}

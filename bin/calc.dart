import '../logic/calculator.dart';
import '../logic/quad.dart';
import '../utils/operations.dart';

main() {
  print('All-in-one calculator & fast quadratic eqn solver');

  while (true) {
    print('press 1 for calculator');
    print('press 2 for quad eqn solver');
    String? ans = promptString('(1 or 2)');

    if (ans == '1') {
      startCalculator();
    } else if (ans == '2') {
      startQuadraticEqnSolver();
    }
  }
}

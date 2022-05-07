import 'dart:io';

num? prompt(message) {
  print(message);
  dynamic myNum = stdin.readLineSync();

  num? ans;
  try {
    ans = num.parse(myNum);
  } catch (e) {
    print('pls provide a value!');

    // i know thisis totally crazy!!!
    return prompt(message);
  }

  return ans;
}

String? promptString(String message) {
  print(message);
  String? ans = stdin.readLineSync();

  return ans;
}

num sum(x, y) => x + y;
num minus(x, y) => x - y;
num divide(x, y) => x / y;
num times(x, y) => x * y;

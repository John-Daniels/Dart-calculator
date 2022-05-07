import 'dart:math';

main() {
  cookSomeFood('amala', (res, err) {
    if (err != null) {
      return print(err);
    }
    return print(res);
  });
}

// callbacks

cookSomeFood(String meal, Function callback) {
  bool isReady = false;

  var conditions = Random().nextInt(3) * 3 + Random().nextInt(3) * 2;
  print(conditions);
  if (conditions >= 7) {
    isReady = true;
  }

  if (isReady)
    callback('your $meal is ready! enjoy!!!', null);
  else
    callback(null, 'We are still cooking your $meal');
}

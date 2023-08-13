import 'dart:html';
import 'dart:core';

void main() async {
  final header = querySelector('#target');
  header?.text = "READY?";
  await Future.delayed(const Duration(seconds: 2), () => {});

  for (var count = 5; count > 0; count--) {
    header?.text = "$count";

    await Future.delayed(const Duration(seconds: 1), () => {});
  }
  header?.text = "FIRE";
}

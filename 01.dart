import 'dart:io';

void main() {
  stdout.write("숫자를 입력하세요: ");
  int n = int.parse(stdin.readLineSync()!);

  if (n < 0) {
    print(n);
  } else {
    int sum = 0;
    int temp = n;
    while (temp > 0) {
      sum += temp % 10;
      temp ~/= 10;
    }
    print(sum);
  }
}

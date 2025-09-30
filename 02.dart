import 'dart:convert';
import 'dart:math';

class Student {
  String name = '';
  int kor = 0;
  int eng = 0;
  int math = 0;
  double avg = 0.0;

  Student(this.name, this.kor, this.eng, this.math) {
    setAvg();
  }

  void setAvg() {
    avg = (kor + eng + math) / 3.0;
  }

  String getResult() {
    return avg >= 50 ? "PASS" : "FAIL";
  }
}

void main() {
  var rand = Random();
  var students = <Student>[];

  for (int i = 0; i < 10; i++) {
    String name = AsciiDecoder().convert([65 + i]);
    int kor = rand.nextInt(100) + 1;
    int eng = rand.nextInt(100) + 1;
    int math = rand.nextInt(100) + 1;
    students.add(Student(name, kor, eng, math));
  }

  print("이름   국어   영어   수학   평균     결과");

  for (var s in students) {
    print(s.name.padRight(4) +
        s.kor.toString().padLeft(5) +
        s.eng.toString().padLeft(6) +
        s.math.toString().padLeft(6) +
        s.avg.toStringAsFixed(2).padLeft(8) +
        s.getResult().padLeft(8));
  }

  print("\n평균으로 정렬 ");

  students.sort((a, b) => b.avg.compareTo(a.avg));

  for (var s in students) {
    print(s.name.padRight(4) +
        s.kor.toString().padLeft(5) +
        s.eng.toString().padLeft(6) +
        s.math.toString().padLeft(6) +
        s.avg.toStringAsFixed(2).padLeft(8) +
        s.getResult().padLeft(8));
  }
}

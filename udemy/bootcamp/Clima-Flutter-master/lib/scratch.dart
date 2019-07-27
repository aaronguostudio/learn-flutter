import 'dart:io';

// Basic async/await programming in dart

void main () {
  performTasks();
}

void performTasks () async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1 () {
  String r1 = 'r1';
  print('1 is done');
}

// Future will be generic
Future<String> task2 () async {

  String r2;

  Duration dur = Duration(seconds: 3);
  await Future.delayed(dur, () {
    r2 = 'r2';
    print('2 is done');
    return r2;
  });

  return r2;
}

void task3 (String r2) {
  String r3 = 'r3';
  print('3 is done $r2');
}
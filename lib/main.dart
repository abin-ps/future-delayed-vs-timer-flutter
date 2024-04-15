import 'dart:async';
import 'package:intl/intl.dart';

Timer? timer;

void main() {
  if (timer?.isActive ?? false) {
    timer?.cancel();
    print('Timer was cancelled.');
  }
  runTimerExample();
  runFutureDelayedExample();
}

void runTimerExample() {
  final String startTime = getCurrentTime();
  print('Start timer call at $startTime.');

  timer = Timer(const Duration(seconds: 30), () {
    final String endTime = getCurrentTime();
    print('Function inside timer executed at $endTime.');
  });

  print('Functions and other things outside the timer.');
  print('Current time: ${getCurrentTime()}');
  print('......................');
}

Future<void> runFutureDelayedExample() async {
  final String startTime = getCurrentTime();
  print('Start Future.delayed call at $startTime.');

  await Future.delayed(const Duration(seconds: 30), () {
    final String endTime = getCurrentTime();
    print('Function inside Future.delayed executed at $endTime.');
  });

  print('Functions and other things outside Future.delayed.');
  print('Current time: ${getCurrentTime()}');
}

String getCurrentTime() {
  return DateFormat('HH:mm:ss').format(DateTime.now());
}

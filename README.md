# Future.delayed vs Timer in Flutter

This project compares the `Future.delayed` and `Timer` functionalities in Flutter. 

## Objective

The objective of this project is to provide a clear understanding of when to use `Future.delayed` and `Timer`.

## Dependencies

This project uses the following packages:

```yaml
dependencies:
  flutter:
    sdk: flutter
  intl: ^0.19.0
```
## Running the Code

You can run the code in this project on your local machine, or you can use [DartPad](https://dartpad.dev/) to run it online without any setup. 

To run the code on DartPad:
1. Open [DartPad](https://dartpad.dev/).
2. Copy the code from `[main.dart](https://github.com/abin-ps/future-delayed-vs-timer-flutter/blob/main/lib/main.dart)` in this repository.
3. Paste the code into DartPad.
4. Click "Run" to execute the code.

This way, you can quickly and easily run the Dart code in this project without needing to set up a local development environment.

## Sample Output

Here's an example of what you might see when you run the `Future.delayed` and `Timer` examples:

```console
Start timer call at 17:19:18.
Functions and other things outside the timer.
Current time: 17:19:18
......................
Start Future.delayed call at 17:19:18.
Function inside timer executed at 17:19:49.
Function inside Future.delayed executed at 17:19:49.
Functions and other things outside Future.delayed.
Current time: 17:19:49
```

## Summary

If you choose `Future.delayed` over `Timer`, don't use `await` before it. Doing so will pause the following code until the delay ends. Also, this code will only run after the `Future.delayed` block finishes.

Stream<int> numberStream() async* {
  for (var i = 1; i <= 5; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

Future<void> main() async {
  print("Part 3: Stream of numbers (1..5)");
  print("Listening...");
  await for (final value in numberStream()) {
    print("Received: $value");
  }
  print("Stream closed.");
}

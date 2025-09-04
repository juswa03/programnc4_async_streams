Future<String> fetchMessage() async {
  // Simulate a delay (e.g., network or long computation)
  await Future.delayed(const Duration(seconds: 2));
  return "Hello from the future (after 2 seconds)!";
}

Future<void> main() async {
  print("Part 1: Using a Future with await");
  print("Waiting for the message...");
  final result = await fetchMessage();
  print("Result: $result");
}

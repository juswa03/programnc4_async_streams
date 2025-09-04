Future<String> riskyOperation() async {
  await Future.delayed(const Duration(seconds: 2));
  // Simulate an error
  throw Exception("Simulated failure inside Future.delayed");
}

Future<void> main() async {
  print("Part 2: Error handling in an asynchronous operation");
  print("Starting risky operation...");
  try {
    final value = await riskyOperation();
    print("Operation succeeded: $value");
  } catch (e) {
    print("Caught error: $e");
  } finally {
    print("Finished (success or error).");
  }
}

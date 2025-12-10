class NegativeNumberException implements Exception {
  final List<int> numbers;

  NegativeNumberException(this.numbers);

  @override
  String toString() => 'negative numbers not allowed: ${numbers.join(',')}';
}

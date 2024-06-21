String createPhoneNumber(List<int> numbers) {
  if (numbers.length != 10 || numbers.any((number) => number < 0 || number > 9)) {
    throw ArgumentError('Input must be a list of 10 integers between 0 and 9.');
  }

  String part1 = numbers.sublist(0, 3).join();
  String part2 = numbers.sublist(3, 6).join();
  String part3 = numbers.sublist(6, 10).join();

  return '($part1) $part2-$part3';
}

void main() {
  List<int> phoneNumber = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  print(createPhoneNumber(phoneNumber));  

  List<int> phoneNumber2 = [5, 5, 1, 2, 4, 9, 6, 8, 1, 0];
  print(createPhoneNumber(phoneNumber2)); 
}
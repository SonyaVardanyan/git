// // 1
// void main() {
//   List<int> numbers = [12, 4, 56, 9, 7, 8, 23, 16, 5, 4, 2, 9, -7];

//   int smallestNumber = numbers[0];
//   int largestNumber = numbers[0];
//   int sum = 0;

//   for (int number in numbers) {
//     if (number < smallestNumber) {
//       smallestNumber = number;
//     }

//     if (number > largestNumber) {
//       largestNumber = number;
//     }

//     sum += number;
//   }

//   print("Smallest Number: $smallestNumber");
//   print("Largest Number: $largestNumber");
//   print("Sum of Numbers: $sum");
// }

// // 2
// void main() {
//   List<int> numbers = [18, -7, 8, 56, 23, 0, 14, -9, 0, 66, -8, 77, 0];

//   int positiveCount = 0;
//   int negativeCount = 0;
//   int zeroCount = 0;

//   for (int number in numbers) {
//     if (number > 0) {
//       positiveCount++;
//     } else if (number < 0) {
//       negativeCount++;
//     } else {
//       zeroCount++;
//     }
//   }

//   print("Number of Positive Numbers: $positiveCount");
//   print("Number of Negative Numbers: $negativeCount");
//   print("Number of Zeros: $zeroCount");
// }

// // 3
// void main() {
//   List<int> numbers = List.generate(100, (index) => index + 1);

//   print("Original Array: $numbers");

//   for (int i = 0; i < numbers.length; i++) {
//     if (numbers[i] % 2 == 0) {
//       numbers.removeAt(i);
//       i--; // Adjust index after removing an element
//     }
//   }

//   print("Modified Array: $numbers");
// }

// 4
import 'dart:math';

void main() {
  List<int> randomNumbers = List.generate(100, (_) => Random().nextInt(11));

  print("Original Array: $randomNumbers");

  Set<int> uniqueNumbers = Set<int>.from(randomNumbers);
  List<int> uniqueList = uniqueNumbers.toList();

  print("Array without Duplicates: $uniqueList");
}


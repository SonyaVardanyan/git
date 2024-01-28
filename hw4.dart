// // 1
// void main() {
//   List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

//   List<int> evenList = a.where((element) => element % 2 == 0).toList();

//   print("Original List: $a");
//   print("Even Elements List: $evenList");
// }

// // 2
// void main() {
//   List<int> a = [5, 10, 15, 20, 25];

//   List<int> result = getFirstAndLastElements(a);

//   print("Original List: $a");
//   print("New List with First and Last Elements: $result");
// }

// List<int> getFirstAndLastElements(List<int> inputList) {
//   if (inputList.isEmpty) {
//     print("Input list is empty.");
//     return [];
//   }

//   int firstElement = inputList.first;
//   int lastElement = inputList.last;

//   return [firstElement, lastElement];
// }

// // 3
// import 'dart:io';

// void main() {
//   stdout.write("Enter a long string with multiple words: ");
//   String userInput = stdin.readLineSync() ?? "";

//   String reversedString = reverseWords(userInput);

//   print("Reversed String: $reversedString");
// }

// String reverseWords(String input) {
//   List<String> words = input.split(' ');
//   List<String> reversedWords = words.reversed.toList();
//   return reversedWords.join(' ');
// }

// // 4
// import 'dart:io';
// import 'dart:math';

// void main() {
//   print("Think of a number between 0 and 100.");

//   int lowerBound = 0;
//   int upperBound = 100;

//   while (true) {
//     int guess = generateRandomNumber(lowerBound, upperBound);
//     print("Is your number $guess? (Type 'low', 'high', or 'correct')");
    
//     String userFeedback = stdin.readLineSync()?.toLowerCase() ?? "";

//     if (userFeedback == "correct") {
//       print("Great! I guessed your number.");
//       break;
//     } else if (userFeedback == "low") {
//       lowerBound = guess + 1;
//     } else if (userFeedback == "high") {
//       upperBound = guess - 1;
//     } else {
//       print("Invalid input. Please type 'low', 'high', or 'correct'.");
//     }
//   }
// }

// int generateRandomNumber(int min, int max) {
//   final Random random = Random();
//   return min + random.nextInt(max - min + 1);
// }

// // 5
// import 'dart:io';

// void main() {
//   stdout.write("Enter a number to calculate its factorial: ");
//   String userInput = stdin.readLineSync() ?? "";
  
//   try {
//     int number = int.parse(userInput);
    
//     if (number < 0) {
//       print("Factorial is not defined for negative numbers.");
//     } else {
//       int factorialResult = calculateFactorial(number);
//       print("Factorial of $number is: $factorialResult");
//     }
//   } catch (e) {
//     print("Invalid input. Please enter a valid integer.");
//   }
// }

// int calculateFactorial(int n) {
//   if (n == 0 || n == 1) {
//     return 1;
//   } else {
//     return n * calculateFactorial(n - 1);
//   }
// }

// // 6
// import 'dart:io';

// void main() {
//   stdout.write("Enter a positive integer: ");
//   String userInput = stdin.readLineSync() ?? "";

//   try {
//     int limit = int.parse(userInput);

//     if (limit < 0) {
//       print("Please enter a positive integer.");
//     } else {
//       int sumOfEvens = calculateSumOfEvens(limit);
//       print("Sum of even numbers up to $limit: $sumOfEvens");
//     }
//   } catch (e) {
//     print("Invalid input. Please enter a valid integer.");
//   }
// }

// int calculateSumOfEvens(int limit) {
//   int sum = 0;

//   for (int i = 0; i <= limit; i += 2) {
//     // Incrementing by 2 to consider only even numbers
//     sum += i;
//   }

//   return sum;
// }

// // 7
// void main() {
//   for (int i = 1; i <= 5; i++) {
//     for (int j = 1; j <= i; j++) {
//       print('*');
//     }
//     print(''); // To move to the next line after each row
//   }
// }

// 8
void main() {
  int n = 10; 

  print("First $n numbers in the Fibonacci sequence:");

  for (int i = 0; i < n; i++) {
    print(fibonacci(i));
  }
}

int fibonacci(int n) {
  if (n == 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}


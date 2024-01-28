// // 1
// import 'dart:io';

// void main() {
//   stdout.write("Enter your name: ");
//   String userName = stdin.readLineSync()!;

//   stdout.write("Enter your weight (in kg): ");
//   double userWeight = double.parse(stdin.readLineSync()!);
//   stdout.write("Enter your height (in meters): ");
//   double userHeight = double.parse(stdin.readLineSync()!);
//   double bmi = calculateBMI(userWeight, userHeight);
//   print("Hello $userName. Your BMI is ${bmi.toStringAsFixed(2)}.");
// }
// double calculateBMI(double weight, double height) {
//   return weight / (height * height);
// }

// // 2
// import 'dart:io';

// void main() {

//   stdout.write("Enter the first number: ");
//   double num1 = double.parse(stdin.readLineSync()!);

//   stdout.write("Enter the second number: ");
//   double num2 = double.parse(stdin.readLineSync()!);

//   double sum = num1 + num2;
//   double difference = num1 - num2;
//   double product = num1 * num2;

//   double quotient = num2 != 0 ? num1 / num2 : double.infinity;

//   print("Sum: $sum");
//   print("Difference: $difference");
//   print("Product: $product");

//   if (num2 != 0) {
//     print("Quotient: $quotient");
//   } else {
//     print("Cannot divide by zero.");
//   }
// }


// // 3
// import 'dart:io';

// int? convertToInteger(String input) {
//   try {
//     return int.parse(input);
//   } catch (e) {
//     print("Error: $e");
//     return null;
//   }
// }

// void main() {
//   stdout.write("Enter a numeric string: ");
//   String inputString = stdin.readLineSync()!;
  
//   int? result = convertToInteger(inputString);

//   if (result != null) {
//     print("Converted Integer: $result");
//   } else {
//     print("Conversion failed. Please enter a valid numeric string.");
//   }
// }


// // 4
// import 'dart:io';

// void main() {
//   stdout.write("Enter your age: ");
//   String? inputAge = stdin.readLineSync();

//   String ageCategory = inputAge != null
//       ? (int.parse(inputAge) < 18 ? "Minor" : "Adult")
//       : "Unknown";

//   print("Age Category: $ageCategory");
// }


// // 5
// void printUserInfo({String? name, int? age, String? country}) {
//   String finalName = name ?? "Unknown";
//   int finalAge = age ?? 0;
//   String finalCountry = country ?? "Unknown";

//   print("Name: $finalName");
//   print("Age: $finalAge");
//   print("Country: $finalCountry");
// }

// void main() {
//   printUserInfo(name: "Alice", age: null, country: "USA");
// }

// // 6
// int? doubleNullable(int? number) {
//   return number != null ? number * 2 : null;
// }

// int? squareNullable(int? number) {
//   return number != null ? number * number : null;
// }

// int? doubleAndSquareNullable(int? number) {
//   return squareNullable(doubleNullable(number));
// }

// void main() {
//   int? inputNumber = 5;
  
//   int? result = doubleAndSquareNullable(inputNumber);

//   if (result != null) {
//     print("Result: $result");
//   } else {
//     print("Input is null.");
//   }
// }

// // 7
// void printValues(int requiredValue, int? optionalValue) {
//   int finalOptionalValue = optionalValue ?? 0;

//   print("Required Value: $requiredValue");
//   print("Optional Value: $finalOptionalValue");
// }

// void main() {
//   int requiredInput = 42;
//   int? optionalInput = null;

//   printValues(requiredInput, optionalInput);
//   print("-----");
//   printValues(requiredInput, 99);
// }

// 8
void processDynamicParameter(dynamic input) {
  if (input is int || input is double) {
    print("Result: ${input * 2}");
  } else if (input is String) {
    print("Length of the string: ${input.length}");
  } else if (input == null) {
    print("Input is null.");
  } else {
    print("Unsupported type: ${input.runtimeType}");
  }
}

void main() {
  dynamic input1 = 5;
  dynamic input2 = 3.14;
  dynamic input3 = "Hello, Dart!";
  dynamic input4 = null;
  dynamic input5 = true;

  processDynamicParameter(input1);
  processDynamicParameter(input2);
  processDynamicParameter(input3);
  processDynamicParameter(input4);
  processDynamicParameter(input5);
}

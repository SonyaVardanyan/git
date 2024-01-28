// // 1
// import 'dart:io';

// void main() {
//   File inputFile = File('input.txt');

//   try {
//     List<String> lines = inputFile.readAsLinesSync();

//     print("Contents of input.txt:");

//     for (String line in lines) {
//       print(line);
//     }
//   } catch (e) {
//     print("Error reading the file: $e");
//   }
// }

// // 2
// import 'dart:convert';
// import 'dart:io';

// class Employee {
//   String name;
//   String email;

//   Employee(this.name, this.email);

//   factory Employee.fromJson(Map<String, dynamic> json) {
//     return Employee(json['name'], json['email']);
//   }

//   @override
//   String toString() {
//     return 'Name: $name, Email: $email';
//   }
// }

// void main() {
//   try {
//     String filename = 'person.json';
//     File jsonFile = File(filename);

//     if (jsonFile.existsSync()) {
//       String jsonString = jsonFile.readAsStringSync();

//       Map<String, dynamic> jsonMap = json.decode(jsonString);

//       List<dynamic> employeesJson = jsonMap['employees'];
//       List<Employee> employees = employeesJson
//           .map((employeeJson) => Employee.fromJson(employeeJson))
//           .toList();

//       for (Employee employee in employees) {
//         print(employee);
//       }
//     } else {
//       print('File $filename does not exist.');
//     }
//   } catch (e) {
//     print('Error reading or parsing the JSON file: $e');
//   }
// }

// 3
import 'dart:convert';

class Book {
  String title;
  String author;
  int publicationYear;

  Book(this.title, this.author, this.publicationYear);

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'author': author,
      'publicationYear': publicationYear,
    };
  }

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      json['title'],
      json['author'],
      json['publicationYear'],
    );
  }

  @override
  String toString() {
    return 'Title: $title, Author: $author, Publication Year: $publicationYear';
  }
}

void main() {
  // Create a list of books
  List<Book> books = [
    Book('The Catcher in the Rye', 'J.D. Salinger', 1951),
    Book('To Kill a Mockingbird', 'Harper Lee', 1960),
    Book('1984', 'George Orwell', 1949),
  ];

  // Convert the list of books to a JSON string
  String jsonString = json.encode(books.map((book) => book.toJson()).toList());

  print('JSON String:');
  print(jsonString);

  // Decode the JSON string and print details of each book
  List<dynamic> decodedBooks = json.decode(jsonString);
  List<Book> decodedBookObjects =
      decodedBooks.map((book) => Book.fromJson(book)).toList();

  print('\nDecoded Books:');
  for (Book book in decodedBookObjects) {
    print(book);
  }
}

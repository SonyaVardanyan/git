import 'dart:convert';
import 'dart:io';

class User {
  String login;
  String password;
  String email;

  User(this.login, this.password, this.email);

  Map<String, dynamic> toJson() {
    return {
      'login': login,
      'password': password,
      'email': email,
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      json['login'],
      json['password'],
      json['email'],
    );
  }
}

void main() {
  const String authFilePath = 'auth.json';

  print('Choose an option for auth: Login/Registration');
  String option = stdin.readLineSync()?.toLowerCase() ?? '';

  if (option == 'login') {
    loginUser(authFilePath);
  } else if (option == 'registration') {
    registerUser(authFilePath);
  } else {
    print('Invalid option. Please choose either "Login" or "Registration".');
  }
}

void loginUser(String authFilePath) {
  print('Enter your login:');
  String login = stdin.readLineSync() ?? '';

  print('Enter your password:');
  String password = stdin.readLineSync() ?? '';

  List<User> users = loadUsers(authFilePath);

  if (userExists(users, login, password)) {
    print('Successfully logged in.');
  } else {
    print('Invalid credentials.');
  }
}

void registerUser(String authFilePath) {
  print('Enter your login:');
  String login = stdin.readLineSync() ?? '';

  print('Enter your password:');
  String password = stdin.readLineSync() ?? '';

  print('Enter your email:');
  String email = stdin.readLineSync() ?? '';

  List<User> users = loadUsers(authFilePath);

  if (userExists(users, login, email)) {
    print('Account already exists.');
  } else {
    users.add(User(login, password, email));
    saveUsers(authFilePath, users);
    print('Registration successful.');
  }
}

List<User> loadUsers(String authFilePath) {
  try {
    File authFile = File(authFilePath);

    if (authFile.existsSync()) {
      String fileContent = authFile.readAsStringSync();
      List<dynamic> jsonList = json.decode(fileContent);
      return jsonList.map((json) => User.fromJson(json)).toList();
    }
  } catch (e) {
    print('Error loading users: $e');
  }

  return [];
}

void saveUsers(String authFilePath, List<User> users) {
  try {
    File authFile = File(authFilePath);
    List<Map<String, dynamic>> jsonList =
        users.map((user) => user.toJson()).toList();

    authFile.writeAsStringSync(json.encode(jsonList));
  } catch (e) {
    print('Error saving users: $e');
  }
}

bool userExists(List<User> users, String login, String value) {
  return users.any((user) =>
      user.login.toLowerCase() == login.toLowerCase() ||
      user.email.toLowerCase() == value.toLowerCase());
}

class User {
  final String email;
  final String password;
  final String displayName;

  User(this.email, this.password, this.displayName);
}

class AuthService {
  Map<String, User> _users = {
    'user1@usm.cl': User('user1@usm.cl', 'password1', 'User 1'),
    'user2@usm.cl': User('user2@usm.cl', 'password2', 'User 2'),
    'user3@usm.cl': User('user3@usm.cl', 'password3', 'User 3'),
  };

  User? _loggedInUser;

  User? login(String email, String password) {
    if (_users.containsKey(email) && _users[email]!.password == password) {
      _loggedInUser = _users[email];
      return _loggedInUser;
    } else {
      return null;
    }
  }

  bool isLoggedIn() {
    return _loggedInUser != null;
  }
}

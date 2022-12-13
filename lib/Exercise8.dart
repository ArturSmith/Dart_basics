mixin GetUserName on User {
  String getMailSystem(String email) {
    var list = email.split("@");
    String newString = list[1];
    return newString;
  }
}

class User {
  String email;
  User(this.email);
}

class AdminUser extends User with GetUserName {
  AdminUser(super.email) {
    email = getMailSystem(email);
  }
}

class GeneralUser extends User {
  GeneralUser(super.email);
}

class UserManadger<T extends User> {
  List<String> usersList = [];

  User() {}

  void AddUser(T user) {
    usersList.add(user.email);
  }

  void RemoveUser(T user) {
    usersList.remove(user);
  }

  void PrintListOfUsers() {
    if (usersList.isNotEmpty) {
      for (var element in usersList) {
        print(element);
      }
    }
  }
}

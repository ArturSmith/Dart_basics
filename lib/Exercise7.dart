mixin GetUserName {
  String getEmail(String string) {
    var emailCom = "@gmail.com";
    return string += emailCom;
  }
}

class User {
  var Email;
  User(this.Email);
}

class AdminUser extends User with GetUserName {
  AdminUser(super.Email) {
    print(getEmail(Email));
  }

  @override
  String getEmail(String string) {
    return super.getEmail(string);
  }
}

class GeneralUser extends User {
  GeneralUser(super.Email);
}

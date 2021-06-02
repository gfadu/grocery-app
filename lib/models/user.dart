class User {
  late String _email;
  late String _username;
  late String _password;

  User(this._email, this._username, this._password);

  User.fromMapObject(Map<String, dynamic> map) {
    this._email = map['email'];
    this._username = map['username'];
    this._password = map['password'];
  }

  String get email => _email;
  String get username => _username;
  String get password => _password;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map['email'] = _email;
    map['username'] = _username;
    map['password'] = _password;
    return map;
  }
}

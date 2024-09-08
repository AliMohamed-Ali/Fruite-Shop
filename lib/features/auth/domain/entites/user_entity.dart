class UserEntity {
  final String email;
  final String name;
  final String uid;
  UserEntity({required this.uid, required this.email, required this.name});

  toMap() {
    return {
      "uid": uid,
      "email": email,
      "name": name,
    };
  }
}

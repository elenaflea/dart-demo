class User{
  final id;
  String name;
  String surname;
  String? email;

  User({
    required this.id,
    required this.name,
    required this.surname,
    this.email,
  });

  void connect() async{
    await Future.delayed(Duration(seconds:10));
  }

  Future connect2() async{
    return Future.delayed(Duration(seconds:5));
  }

  Future connect3() async{
    await Future.delayed(Duration(seconds:5));
    return Future.value(1);
  }
}
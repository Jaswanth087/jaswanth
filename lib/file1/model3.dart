class page{
  final int id;
  final String email;
  final String first_name;
  final String last_name;
  final String avatar;

  page({
    required this.id,
    required this.email,
    required this.first_name,
    required this.last_name,
    required this.avatar,
});
  factory page.fromJson(Map<String,dynamic>json){
    return page(
      id: json["id"],
      email: json["email"],
      first_name: json["first_name"],
      last_name: json["last_name"],
      avatar: json["avatar"]
    );
  }
}
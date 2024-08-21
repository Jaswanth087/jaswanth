class sai{
  final int id;
  final int userId;
  final String title;
  final String body;

  sai({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
});
  factory sai.fromJson(Map<String,dynamic>json){
    return sai(
      id:json["id"],
      userId:json["userId"],
      title:json["title"],
      body:json["body"],
    );
  }
}
class Model{
  final int userId;
  final int id;
  final String title;
  final String body;

  Model({
    required this.userId,
    required this.id,
    required this.title,
    required this.body
});
  factory Model.fromJson (Map<String,dynamic>json){
    return Model(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"]
    );
  }
}
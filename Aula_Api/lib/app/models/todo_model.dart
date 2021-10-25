class TodoModel {
  int ?userId;
  int ?id;
  String ?title;
  bool ?completed;

  TodoModel({required this.userId,required this.id,required this.title,required this.completed});

  TodoModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'] ;
    id = json['id'] ;
    title = json['title'] ;
    completed = json['completed'] ;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    data['completed'] = completed;
    return data;
  }
}
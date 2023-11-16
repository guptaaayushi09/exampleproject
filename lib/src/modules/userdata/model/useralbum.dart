class ApiModel {
  int? userId;
  int? id;
  String? title;

  ApiModel({this.userId, this.id, this.title});

  ApiModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    return data;
  }
}

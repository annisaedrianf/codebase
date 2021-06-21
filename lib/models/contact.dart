class Contact {
  int id;
  String name;
  String photo;

  Contact({this.id, this.name, this.photo});
  Contact.fromJson(Map<String, dynamic> json)
      : this(id: json['id'], name: json['name'], photo: json['photo']);

  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'photo': photo};
}

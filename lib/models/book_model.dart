import 'dart:io';


class BookModel{
  int? id;
  late String name;

  file? image;
  late string synopsis


  BookModel({
    this.id,
    required this.name,

    this.image,
    required this.description,
});

  Map<String, dynamic> toMap(){
    return{
      'id': id,
      'name': name,
      'synopsis': synopsis,
      'image': image == null ? '' : image!.path
    };
  }
}
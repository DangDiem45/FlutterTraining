import 'package:equatable/equatable.dart';

class BookEntity extends Equatable {
  String? id;
  String? title;
  String? author;
  String? subject;
  String? description;
  String? image;

  BookEntity({
    this.id,
    this.title,
    this.author,
    this.subject,
    this.description,
    this.image,
  });

  List<Object?> get props {
    return [id, title, author, subject, description, image];
  }
}

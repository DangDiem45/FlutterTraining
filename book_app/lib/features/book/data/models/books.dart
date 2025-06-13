class BookModel {
  BookModel({
    String? id,
    String? title,
    String? author,
    String? subject,
    String? description,
    String? image,
  });

  factory BookModel.fromJson(Map<String, dynamic> map) {
    return BookModel(
      title: map['title'] ?? '',
      author: map['author'] ?? '',
      subject: map['subject'] ?? '',
      description: map['description'] ?? '',
      image: map['image'] ?? '',
    );
  }
}

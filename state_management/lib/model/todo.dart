class ToDo {
  String title;
  String description;
  bool isDone;

  ToDo({required this.title, required this.description, this.isDone = false});

  ToDo copyWith({String? title, String? description, bool? isDone}) {
    return ToDo(
      title: title ?? this.title,
      description: description ?? this.description,
      isDone: isDone ?? this.isDone,
    );
  }
}

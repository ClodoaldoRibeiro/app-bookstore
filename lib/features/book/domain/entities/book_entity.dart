class BookEntity {
  final String urlCover;
  final String title;
  final String author;
  final int evaluation;
  final String aboutAuthor;
  final String description;
  final double price;

  const BookEntity({
    required this.urlCover,
    required this.title,
    required this.author,
    required this.evaluation,
    required this.aboutAuthor,
    required this.description,
    required this.price,
  });
}

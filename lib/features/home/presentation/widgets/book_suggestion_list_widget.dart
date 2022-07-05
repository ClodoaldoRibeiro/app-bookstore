import 'package:flutter/material.dart';

import '../controllers/book_suggestion_controller.dart';

class BookSuggestionListWidget extends StatefulWidget {
  final BookSuggestionController bookSuggestionController;

  const BookSuggestionListWidget({
    Key? key,
    required this.bookSuggestionController,
  }) : super(key: key);

  @override
  State<BookSuggestionListWidget> createState() =>
      _BookSuggestionListWidgetState();
}

class _BookSuggestionListWidgetState extends State<BookSuggestionListWidget> {
  @override
  void initState() {
    super.initState();

    widget.bookSuggestionController.bookSuggestion();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: Colors.green,
      child: const Text('Sugestão de livros'),
    );
  }
}

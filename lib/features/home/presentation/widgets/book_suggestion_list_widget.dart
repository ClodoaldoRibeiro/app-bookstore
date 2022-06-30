import 'package:flutter/material.dart';

class BookSuggestionListWidget extends StatelessWidget {
  const BookSuggestionListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: Colors.green,
      child: const Text('Sugestão de livros'),
    );
  }
}

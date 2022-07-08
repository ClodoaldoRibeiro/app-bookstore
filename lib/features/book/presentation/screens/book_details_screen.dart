import 'package:flutter/material.dart';

import '../../domain/entities/book_entity.dart';
import '../controllers/book_details_controller.dart';

class BookDetailsScreen extends StatefulWidget {
  final BookEntity bookEntity;
  final BookDetailsController bookDetailsController;

  const BookDetailsScreen({
    Key? key,
    required this.bookDetailsController,
    required this.bookEntity,
  }) : super(key: key);

  @override
  State<BookDetailsScreen> createState() => BbooDdetailSscreenState();
}

class BbooDdetailSscreenState extends State<BookDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

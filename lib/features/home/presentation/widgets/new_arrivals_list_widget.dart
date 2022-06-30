import 'package:flutter/material.dart';

class NewArrivalsListWidget extends StatelessWidget {
  const NewArrivalsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: Colors.blue,
      child: const Text('Novas chegadas de livros'),
    );
  }
}

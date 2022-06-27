import 'package:flutter/material.dart';

class PlatinumLoading extends StatelessWidget {
  final String message;

  const PlatinumLoading({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 65,
            width: 65,
            child: CircularProgressIndicator(
              color: Colors.red,
              strokeWidth: 5,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            message,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}

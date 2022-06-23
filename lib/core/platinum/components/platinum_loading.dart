import 'package:flutter/material.dart';

class PlatinumLoading extends StatelessWidget {
  const PlatinumLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(
            height: 65,
            width: 65,
            child: CircularProgressIndicator(
              color: Colors.red,
              strokeWidth: 5,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Por favor, aguarde...',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}

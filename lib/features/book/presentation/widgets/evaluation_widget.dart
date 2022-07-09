import 'package:flutter/cupertino.dart';

import 'star_widget.dart';

class EvaluationWidget extends StatelessWidget {
  final int evaluation;

  const EvaluationWidget({
    Key? key,
    required this.evaluation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (evaluation <= 0) return const SizedBox();

    List<Widget> children = <Widget>[];

    for (var i = 0; i < evaluation; i++) {
      children.add(const StarWidget());
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: children,
    );
  }
}

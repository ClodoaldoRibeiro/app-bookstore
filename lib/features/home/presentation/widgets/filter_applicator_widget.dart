import 'package:bookstore/core/platinum/spacing/platinum_padding.dart';
import 'package:flutter/material.dart';

class FilterApplicatorWidget extends StatelessWidget {
  const FilterApplicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Search here',
        prefix: SizedBox(
          width: PlatinumPadding.viii,
        ),
      ),
      onChanged: (newValue) {},
    );
  }
}

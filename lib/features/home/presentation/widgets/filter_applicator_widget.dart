import 'package:flutter/material.dart';

import '../../../../core/platinum/spacing/platinum_padding.dart';

class FilterApplicatorWidget extends StatelessWidget {
  const FilterApplicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: 'Search here',
        isDense: true,
        prefixIcon: const Icon(Icons.search_outlined),
        suffixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mic_none_outlined),
            ),
            const Icon(Icons.filter_alt_rounded),
            const SizedBox(
              width: PlatinumPadding.xx,
            )
          ],
        ),
      ),
      onChanged: (newValue) {},
    );
  }
}

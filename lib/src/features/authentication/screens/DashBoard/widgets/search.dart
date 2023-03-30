

import 'package:flutter/material.dart';

import '../../../../../constants/text_strings.dart';

class DashBoardSearchBox extends StatelessWidget {
  const DashBoardSearchBox({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(left: BorderSide(width: 4)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tDashBoardSearch,
            style: txtTheme.headline2?.apply(
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
          const Icon(
            Icons.mic,
            size: 25,
          ),
        ],
      ),
    );
  }
}

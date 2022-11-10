import 'package:flutter/material.dart';

class ContentDivision extends StatelessWidget {
  const ContentDivision({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(166, 166, 166, 1),
          width: 1,
        ),
      ),
    );
  }
}

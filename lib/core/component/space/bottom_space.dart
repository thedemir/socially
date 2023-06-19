import 'package:flutter/cupertino.dart';

class BottomSpace extends StatelessWidget {
  const BottomSpace({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.05,
    );
  }
}

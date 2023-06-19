import 'package:flutter/cupertino.dart';

class TopSpace extends StatelessWidget {
  const TopSpace({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.04,
    );
  }
}

import 'package:flutter/material.dart';
class fire2 extends StatefulWidget {
  const fire2({Key? key}) : super(key: key);

  @override
  State<fire2> createState() => _fire2State();
}

class _fire2State extends State<fire2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          Image(image: NetworkImage('https://vignette.wikia.nocookie.net/nickplus/images/e/e8/Oggy.jpg/revision/latest?cb=20140726052228'),),
        ],
      ),
    );
  }
}

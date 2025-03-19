import 'package:flutter/material.dart';
import 'package:telas/principal.dart';

void main() {
  runApp(ContentWidget());
}

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppBar(),
    );
  }
}

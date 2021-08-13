import 'package:flutter/material.dart';

class NewsHome extends StatelessWidget {
  static final String routeName = '/newshome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
      ),
      body: LayoutBuilder(builder: (context, snapshot) {
        return ListView(
          children: [
            Center(
              child: Text("News Home"),
            ),
          ],
        );
      }),
    );
  }
}

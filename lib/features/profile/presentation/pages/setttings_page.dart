import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Settings',
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://www.apptunix.com/blog/wp-content/uploads/sites/3/2019/11/Apps-built-with-Flutter.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: null /* add child content here */,
      ),
    );
  }
}

//  Image.network(
//           "https://www.apptunix.com/blog/wp-content/uploads/sites/3/2019/11/Apps-built-with-Flutter.jpg",
//         ),

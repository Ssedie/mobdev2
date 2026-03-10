import 'package:flutter/material.dart';
import 'package:flutter_app/repository/posts.dart';
import 'package:flutter_app/widgets/list_item.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 2, 24, 149),
          title: Text(
            "Mobile Development 2",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];
              return ListItem(title: post.title, content: post.content);
            },
          ),
        ),
        /*
        body: singleScrollChild
        */
      ),
    );
  }
}

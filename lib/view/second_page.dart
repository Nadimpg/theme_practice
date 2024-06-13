import 'package:flutter/material.dart';

import 'package:theme_practice/view/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page"),

      ),
      body: Column(
        children: [
          TextButton(onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ThirdPage(),
              ),
            );
          }, child: Text("Third Page",style: TextStyle(color: Colors.red),),)
        ],
      ),
    );
  }
}





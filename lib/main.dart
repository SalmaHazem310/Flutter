import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

// Stateless cannot change over time
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.purple[100],
      ),
      body: Center(
        child: Image.asset('assets/img1.jpg'),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
            MaterialPageRoute(
                builder: (context) => Page2()
          )
          );
        },
        child: Text('click'),
        backgroundColor: Colors.purple,
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Second Page'),
      backgroundColor: Colors.greenAccent,
      ),
      body: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Image.asset('assets/img2.jpg'),
            Text('Hello', style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold, color: Colors.black),)

        ]

          ),
      );
  }
}


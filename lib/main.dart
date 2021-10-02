import 'package:examples/formpage.dart';
import 'package:examples/tabpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/form': (context) => FormPage(),
        '/tab': (context) => TabPage(),
      }));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/form');
                  },
                  child: Text("Form")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/tab');
                  },
                  child: Text("App Bar Tabs"))
            ],
          ),
        ),
      ),
    );
  }
}

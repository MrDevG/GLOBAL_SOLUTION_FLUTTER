import 'package:flutter/material.dart';
import 'routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<Mycard> mycard = [
    Mycard(Icons.android_sharp, 'Alto Tietê', false, 0),
    Mycard(Icons.android_sharp, 'Cantareira', false, 1),
    Mycard(Icons.android_sharp, 'Guarapiranga', false, 2),
    Mycard(Icons.android_sharp, 'Marsilac', false, 3),
    Mycard(Icons.android_sharp, 'Oriental', false, 4),
    Mycard(Icons.android_sharp, 'Rio Claro', false, 5),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f7f9),
      appBar: AppBar(
        title: Text('São Paulo'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Escolha Sua Área',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black54,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: mycard.map(
                      (e) => InkWell(
                        onTap: () {
                          print(e.title);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => RoutesUser(indexSelect: e.index, textIndex: e.title, )),
                          );
                        },
                        child: Card(
                          color: e.isActive ? Colors.deepPurple : null,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                e.icon,
                                size: 50,
                                color: e.isActive
                                    ? Colors.white
                                    : Colors.deepPurple,
                              ),
                              SizedBox(height: 10),
                              Text(
                                e.title,
                                style: TextStyle(
                                    color: e.isActive
                                        ? Colors.white
                                        : Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Mycard {
  final icon;
  final title;
  bool isActive = false;
  int index;

  Mycard(this.icon, this.title, this.isActive, this.index);
}

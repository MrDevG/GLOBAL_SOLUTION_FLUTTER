import 'package:flutter/material.dart';
import 'pages/alto_tiete.dart';
import 'pages/cantareira.dart';
import 'pages/guarapiranga.dart';
import 'pages/marsilac.dart';
import 'pages/oriental.dart';
import 'pages/rio_claro.dart';

class RoutesUser extends StatefulWidget {
  int indexSelect;
  String textIndex;

  RoutesUser({Key key, this.indexSelect, this.textIndex}) : super(key: key);

  @override
  _RoutesUserState createState() => _RoutesUserState();
}

class _RoutesUserState extends State<RoutesUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.textIndex),
      ),
      body: pageForUser(widget.indexSelect),
    );
  }

  Widget pageForUser(int index){
    switch (index){
      case 0:
        return AltoTiete();
      case 1:
        return Cantareira();
      case 2:
        return Guarapiranga();
      case 3:
        return Marsilac();
      case 4:
        return Oriental();
      case 5:
        return RioClaro();
      default:
        return Container();
    }
  }
}

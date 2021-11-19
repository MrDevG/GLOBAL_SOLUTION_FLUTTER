import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Cantareira extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Cantareira> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height - 60.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width - 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Color(0xff5a348b),
                    gradient: LinearGradient(
                        colors: [Color(0xff8d70fe), Color(0xff2da9ef)],
                        begin: Alignment.centerRight,
                        end: Alignment(-1.0, -1.0)
                    ), //Gradient
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //Text
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              child: Text('Turbidez', style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),),
                            ),
                          ),
                          //Two Column Table
                          DataTable(
                            columns: <DataColumn>[
                              DataColumn(
                                label: Text(''),
                              ),
                              DataColumn(
                                label: Text(''),
                              ),
                            ],
                            rows: <DataRow>[
                              DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      myRowDataIcon(
                                          FontAwesomeIcons.check, "Exigido"),
                                    ),
                                    DataCell(
                                      Text('47',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),),
                                    ),
                                  ]
                              ),
                              DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      myRowDataIcon(
                                          FontAwesomeIcons.check,
                                          "Realizado"),
                                    ),
                                    DataCell(
                                      Text('50', style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ]
                              ),
                              DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      myRowDataIcon(
                                          FontAwesomeIcons.check,
                                          "Conforme"),
                                    ),
                                    DataCell(
                                      Text('47', style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ]
                              ),
                            ],
                          ),
                        ],),
                    ],),
                ),
              ),

              //Second ListView
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width - 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Color(0xff5a348b),
                    gradient: LinearGradient(
                        colors: [ Color(0xffebac38), Color(0xffde4d2a)],
                        begin: Alignment.centerRight,
                        end: Alignment(-1.0, -2.0)
                    ), //Gradient
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //Text
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceEvenly,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            child: Icon(FontAwesomeIcons.water,
                                              color: new Color(0xffffffff),
                                              size: 30.0,),padding: EdgeInsets.all(5),),
                                        ),
                                        Container(
                                          child: Text(
                                            'Cor Aparente', style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30.0,
                                          ),),),
                                      ],),
                                  ),
                                ],

                              ),
                            ),
                          ),

                          //Two Column Table
                          DataTable(
                            columns: <DataColumn>[
                              DataColumn(
                                label: Text('Exigido', style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),),
                              ),
                              DataColumn(
                                label: Text('47', style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),),
                              ),
                            ],
                            rows: <DataRow>[
                              DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      Text('Realizado',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                        ),),
                                    ),
                                    DataCell(
                                      Text('47',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                        ),),
                                    ),
                                  ]
                              ),
                              DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      Text('Conforme', style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),),
                                    ),
                                    DataCell(
                                      Text('46',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                        ),),
                                    ),
                                  ]
                              ),
                            ],
                          ),
                        ],),
                    ],),
                ),
              ),
              //Third ListView
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width - 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Color(0xff5a348b),
                    gradient: LinearGradient(
                        colors: [ Color(0xffcb3a57), Color(0xffcb3a57)],
                        begin: Alignment.centerRight,
                        end: Alignment(-1.0, -1.0)
                    ), //Gradient
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //Text
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceEvenly,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            child: Icon(FontAwesomeIcons.handHoldingWater,
                                              color: new Color(0xffffffff),
                                              size: 40.0,),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            child: Text(
                                              'Cloro Residual Livre', style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25.0,
                                            ),),),
                                        ),
                                      ],),
                                  ),
                                ],

                              ),
                            ),
                          ),

                          DataTable(
                            columns: <DataColumn>[
                              DataColumn(
                                label: Text('Exigido', style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),),
                              ),
                              DataColumn(
                                label: Text('47', style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),),
                              ),
                            ],
                            rows: <DataRow>[
                              DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      Text('Realizado',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                        ),),
                                    ),
                                    DataCell(
                                      Text('47',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                        ),),
                                    ),
                                  ]
                              ),
                              DataRow(
                                  cells: <DataCell>[
                                    DataCell(
                                      Text('Conforme', style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),),
                                    ),
                                    DataCell(
                                      Text('46',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                        ),),
                                    ),
                                  ]
                              ),
                            ],
                          ),
                        ],),
                    ],),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

ListTile myRowDataIcon(IconData iconVal, String rowVal) {
  return ListTile(
    leading: Icon(iconVal,
        color: new Color(0xffffffff)),
    title: Text(rowVal, style: TextStyle(
      color: Colors.white,
    ),),
  );
}
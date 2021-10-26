import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/components/bike.dart';
import 'package:untitled3/components/showRunBike.dart';

import 'Transaction.dart';

main() => runApp(ListStolenBike());
class ListStolenBike extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }

}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _bike = [
    Bike(id: '1', name: 'Joao', image: 'url imagem', dateTime: DateTime.now()),
    Bike(id: '2', name: 'Ricardo', image: 'url imagem', dateTime: DateTime.now()),
  Bike(id: '2', name: 'Felipe', image: 'url imagem', dateTime: DateTime.now()),
    Bike(id: '2', name: 'Felipe', image: 'url imagem', dateTime: DateTime.now()),
    Bike(id: '2', name: 'Felipe', image: 'url imagem', dateTime: DateTime.now()),
    Bike(id: '2', name: 'Felipe', image: 'url imagem', dateTime: DateTime.now()),
    Bike(id: '2', name: 'Felipe', image: 'url imagem', dateTime: DateTime.now()),
    Bike(id: '2', name: 'Felipe', image: 'url imagem', dateTime: DateTime.now()),
    Bike(id: '2', name: 'Felipe', image: 'url imagem', dateTime: DateTime.now()),



  ];

  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;


    return Scaffold(
      appBar: AppBar(
        title: Text("Lis of Stolen Bikes")),

          body: Container(
            width: size.width,
            height: size.height,
            child: Column(
              children: <Widget>[
                Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Container(
                           width: size.width,
                           height: size.height ,
                            child:  ShowBikeRun(_bike)
                          )

                        ],
                      ),
                    ))
              ],
            ),
          )
    );


}

}
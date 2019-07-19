
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final estilo = new TextStyle(fontSize: 22);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('titulo'),
        centerTitle: true,
        titleSpacing: 0.5, 
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('numero de clicks'),
              Text('0')
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('cliick');
          },
          child: Icon( Icons.add_circle),
        
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

}
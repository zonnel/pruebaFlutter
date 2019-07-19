import 'package:flutter/material.dart';

//clase principal
class ContadorPage extends StatefulWidget{
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContadorPageState();
  }

}

// classe de difinicion en donde lleva el build
class ContadorPageState extends State{
  
  int _contador= 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('statefullwidget'),
        centerTitle:  true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('numero de clicks'),
            Text('$_contador')
          ],
        ),
      ) ,
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _crearBotones(){
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 20.0,),
        FloatingActionButton( 
          child: Icon(Icons.exposure_zero),
          onPressed: _reiniciarContador,
          ),
        Expanded( child: SizedBox(),),
        FloatingActionButton( 
          child: Icon(Icons.add_circle),
          onPressed: _incrementarContador,
          ),
        SizedBox(width: 5.0,),
        FloatingActionButton( 
          child: Icon(Icons.remove),
          onPressed: _decrementarContdor,
          ),
        
      ],
    );
  
  }

  void _incrementarContador(){
    setState(() => _contador++ );
  }
  void _decrementarContdor(){    
    setState(()=> _contador--);
  }
  void _reiniciarContador(){
    setState(() => _contador = 0 );
  }
}
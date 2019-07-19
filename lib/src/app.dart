
import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/contador_page.dart';

class app extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Center(
          //child:    HomePage(),
          child: ContadorPage(),
        ),
        debugShowCheckedModeBanner: false,
    );
  }
}
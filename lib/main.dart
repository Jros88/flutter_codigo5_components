import 'package:flutter/material.dart';
import 'package:flutter_codigo5_components/pages/practice1.dart';

void main(){
  runApp(MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components App',
      home: Practice1Page(),
    );
  }
}
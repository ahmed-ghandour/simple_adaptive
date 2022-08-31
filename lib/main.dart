import 'package:flutter/material.dart';
import 'mobile_layout.dart';
import 'web_layout.dart';

void main() {
 // this is a git check branch

  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Responsive Login',
      debugShowCheckedModeBanner: false,
      home: Builder(
          builder: (BuildContext context)
          {
            if( MediaQuery.of(context).size.width.toInt() <= 560 )
            {
              return MediaQuery(
                  data :MediaQuery.of(context).copyWith(textScaleFactor: .9),
                  child: const Mobile()
              );
            }
            return const Web();
          }
      )
    );
  }
}

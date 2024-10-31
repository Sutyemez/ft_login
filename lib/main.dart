import 'package:flutter/material.dart';
import 'package:login/login.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: loginPage(),//const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

/*
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Text("Merhaba"),
                ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=>loginPage(),
                    ));
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue
                    ),
                    child:
                    Text("Sayfaya Git"
                    )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/
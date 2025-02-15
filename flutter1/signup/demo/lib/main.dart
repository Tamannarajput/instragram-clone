import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
     
        title: Text('flutter images'),
      ),
      body: Image.asset('assets/da.png')


      // ElevatedButton(
      //   onPressed: (){
      //     print: Text('hiiiiiii');
      //   }, 
      //   child: Text('hello'),)
      // Center(
      //  child: Text('hii', style: TextStyle(fontSize:25 ),),
      //  )
        
      // Center(
      // child:Container(
      //   width: 100,
      //   height: 100,
      //   color: Colors.black,
      //   child: Text('hello'),
      // ),
      // )
    );
  }
}

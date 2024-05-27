import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  var result = " "; 
  var bgcolor = Colors.deepPurple.shade100;

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text('Your BMI'),
      ),
      body: Container(
        color: bgcolor,
        child: Center(
          child: Container(
            
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('BMI', style: TextStyle(fontSize: 34), ),
            
              SizedBox(height: 21,),
            
              TextField(
                controller: wtController,
                decoration: InputDecoration(
                  label: Text('Enter Your Weight (in Kgs): '),
                  prefixIcon: Icon(Icons.line_weight)
                ),
                keyboardType: TextInputType.number,
              ),
              
              SizedBox(height: 11,),
            
              TextField(
                controller: ftController,
                decoration: InputDecoration(
                  label: Text('Enter Your Height (in Feet): '),
                  prefixIcon: Icon(Icons.height)
                ),
                keyboardType: TextInputType.number,
              ),
              
               SizedBox(height: 11,),
            
            
              TextField(
                controller: inController,
                decoration: InputDecoration(
                  label: Text('Enter Your Height (in Inch): '),
                  prefixIcon: Icon(Icons.height)
                ),
                keyboardType: TextInputType.number,
              ),
             
             SizedBox(height: 16,), 
        
              ElevatedButton(onPressed: (){
                var wt = wtController.text.toString();
                var ft = ftController.text.toString();
                var inch = inController.text.toString();
        
                if(wt!="" && ft!="" && inch!="" ){
                  //BMI calculation
        
                  var iwt = int.parse(wt);
                  var ift = int.parse(ft);
                  var iInch = int.parse(inch);
        
                  var tInch = (ift*12) + iInch;
                  var tCm = tInch*2.54;
                  var tm = tCm/100;
        
                  var bmi = iwt / (tm*tm);

                  var msg = "";

                  if(bmi>25){
                    msg = 'You are OverWeight!!';
                    bgcolor = Colors.red.shade200;
                  }else if(bmi<18){
                    msg = 'You are UnderWeight!!';
                    bgcolor = Colors.orange.shade200;
                  }else{
                     msg = 'You are Healthy!!';
                    bgcolor = Colors.green.shade200;
                  }
                  
                  setState(() {
                    result = "$msg \n Your BMI is: ${bmi.toStringAsFixed(2)}"; 
                  });
                  
                }else{
                 setState(() {
                   result = " Please fill all the required details !!";
                 });
                }
        
              }, child: Text('Calculate')),
        
              SizedBox(height: 16,),
              
              Text(result, style:TextStyle(fontSize: 20) ),
        
            ],),
          ),
        ),
      )


    );
  }
}

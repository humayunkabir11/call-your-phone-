import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: const Center(
        child: Column(
          children: [],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:()=> openPhone(),
        child: const Icon(Icons.call),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  openPhone() async {
    String phone =  "01913682281";
    Uri phoneno = Uri.parse('tel:$phone');
    if(await canLaunchUrl(phoneno)){
      await launchUrl(phoneno);
    }else {
      //cannot launch phone
    }
  }

}

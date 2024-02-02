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

  openPhone(String phone) async {

    Uri phoneNo = Uri.parse('tel:$phone');
    if(await canLaunchUrl(phoneNo)){
      await launchUrl(phoneNo);
    }else {
      //cannot launch phone
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              String phone =  "+88 01913682281";
              openPhone(phone);
            },
                child: const Icon(Icons.call_outlined),

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,

                textStyle: TextStyle(color: Colors.white)

              ),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(

        onPressed:(){
          String phone =  "+88 01913682281";
          openPhone(phone);
        },


        child: const Icon(Icons.call),

      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


}

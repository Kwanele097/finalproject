/*import 'package:flutter/material.dart';
class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);
  @override
  State<About> createState() => _AboutState();
}
class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("ABOUT THIS APP"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body:SafeArea(

        child: Column(
            children: <Widget>[
              TextButton(style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.pink)
              ),
                onPressed: (){
                  Navigator.pushNamed(context, '/home');
                },
                child: const Text(' Homepage'),),
              const SizedBox(height: 10.0,),
              TextButton(style:ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.pink)
              ), onPressed:(){
                Navigator.pushNamed(context, '/contact');
              },
                child: const Text("Contact us"),),
              const SizedBox(height: 10.0,),
              TextButton(style:ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.pink)
              ), onPressed:(){
                Navigator.pushNamed(context, '/login');
              },
                child: const Text("Signin"),),
              const SizedBox(height: 10.0,),
              TextButton(style:ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.pink)
              ), onPressed:(){
                Navigator.pushNamed(context, '/register');
              },
                child: const Text("Register"),),
            ]
        ),
      ),
    );
  }
}*/
import 'package:flutter/material.dart';

import 'contact.dart';
import 'package:mausam/contact.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" ABOUT PAGE"),
        centerTitle: true,
        backgroundColor: Colors.green,),
      body: Stack(
        children: <Widget>[
          Image.asset('images/city_background.jpg',
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  // Box decoration takes a gradient
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      Colors.black.withOpacity(1),

                      Colors.black.withOpacity(0.9),

                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.05),
                      Colors.black.withOpacity(0.025),
                    ],
                  ),
                ),
                child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container())),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const Text(
                " The weather app provides you with location based forecasts and  other handy weather information for your immediate surroundings. It helps to track weather forecasts and current conditions in real time",
                textScaleFactor: 1,
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> const Contact()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ],
      ),
    );
  }
}


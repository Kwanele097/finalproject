/*
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("KWANELE'S HOME PAGE"),
        backgroundColor: Colors.deepOrange,
      ),
      body:SafeArea(

        child: Column(
            children: <Widget>[
        const Center(child: CircleAvatar(
            backgroundImage: NetworkImage('https://www.instagram.com/p/Cegz3FbK-8_/?hl=bg' ),
        radius: 60.0,

      ),),
              TextButton(style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.pink)
              ),
                onPressed: (){
                  Navigator.pushNamed(context, '/about');
                },
                child: const Text('go to about'),),

    const SizedBox(height: 10.0,),
    TextButton(style:ButtonStyle(
    foregroundColor: MaterialStateProperty.all(Colors.pink)
    ), onPressed:(){
    Navigator.pushNamed(context, '/contact');
    },
    child: const Text("contact us"),),

              const SizedBox(height: 10.0,),
              TextButton(style:ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.pink)
              ), onPressed:(){
                Navigator.pushNamed(context, '/about');
              },
                child: const Text("my about"),),


              const SizedBox(height: 10.0,),
              TextButton(style:ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.pink)
              ), onPressed:(){
                Navigator.pushNamed(context, '/login');
              },
                child: const Text("Signin"),),
            ]
        ),

      ),
    );
  }
}
*/
import 'package:flutter/material.dart';

import 'about.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text(" HOME PAGE"),
    centerTitle: true,
    backgroundColor: Colors.amberAccent,),
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
                " WELCOME TO MY WEATHER APP",
                textScaleFactor: 1,
                style: TextStyle(
                    fontSize: 100,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Track weather forecast and \n current condition in real-time",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> About()));
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



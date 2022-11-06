import 'package:flutter/material.dart';
import 'package:mausam/login.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage('data:image/jpeg;base64,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'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 35, top: 30),
              child: const Text(
                'Create\nAccount',
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Name",
                                hintStyle: const TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Email",
                                hintStyle: const TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: const TextStyle(color: Colors.white),
                            obscureText: true,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Password",
                                hintStyle: const TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 27,
                                    fontWeight: FontWeight.w700),
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: const Color(0xff4c505b),
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/login');
                                    },
                                    icon: const Icon(
                                      Icons.arrow_forward,
                                    )),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'login');
                                  // Navigator.of(context).push(_createRoute());
                                },
                                child: const Text(
                                  'Sign In',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.white,
                                      fontSize: 18),
                                ),
                                style: const ButtonStyle(),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Route _createRoute() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => const MyLogin(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       return child;
//     },
//   );
// }

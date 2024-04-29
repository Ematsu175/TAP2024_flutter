import 'package:flutter/material.dart';
import 'package:tap_2024/screens/home_screen.dart';

class LoginScreen2 extends StatelessWidget {
  const LoginScreen2({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                  Color.fromARGB(255, 23, 26, 184),
                  Color.fromARGB(255, 255, 255, 255),
                ])),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  top: 30,
                  child: Image.asset('assets/user_ls2.png'),
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ),
          Container(
            child: const Padding(
              padding: EdgeInsets.only(top: 150.0, left: 125),
              child: Text(
                'Sign in!',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    color: Colors.white,
                  ),
                  height: 400,
                  width: 325,
                  child: Padding(
                    padding: EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.check,
                                color: Colors.grey,
                              ),
                              label: Text(
                                'Email',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 23, 26, 184)),
                              )),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.visibility_off,
                                color: Colors.grey,
                              ),
                              label: Text(
                                'Password',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 23, 26, 184),
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Color(0xff281537)),
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Alerta'),
                                content: const Text('Iras a la pagina principal'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'Cancel'), 
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () => Navigator.push(context, 
                                                      MaterialPageRoute(builder: (context) => const HomeScreen())
                                                    ), 
                                    child: const Text('OK')
                                  )
                                ],
                              ) 
                            ), 
                            child: Column(
                              children: [
                                Image.asset('assets/Button_LS2.png', width: 100, height: 100,),
                                const Text("SING IN",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 89, 53, 94)),
                                ),
                              ],
                            ),
                          )

                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Don't have account?",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                Text(
                                  "Sing up",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.black),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tap_2024/screens/home_screen.dart';

class RegistrerScreen extends StatelessWidget {
  RegistrerScreen({super.key});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 202, 201, 201),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "Registrate",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Color.fromARGB(115, 255, 255, 255),
                  ),
                  height: 450,
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.person,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              label: Text(
                                'Nombre completo',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(128, 0, 0, 0)),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                                return "Ingresa un nombre correcto";
                              } else {
                                return null;
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.check,
                                  color:
                                      const Color.fromARGB(128, 255, 255, 255),
                                ),
                                label: Text(
                                  'Email',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(128, 0, 0, 0)),
                                )),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                      .hasMatch(value!)) {
                                return "Ingresa un email correcto";
                              } else {
                                return null;
                              }
                            },
                          ),
                          TextFormField(
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.visibility_off,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    'Password',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(128, 0, 0, 0),
                                    ),
                                  )),
                              obscureText: true,
                              validator: (value) {
                                if (value!.isEmpty || value == null) {
                                  return "Ingresa una contraseña";
                                }
                                if (value.length < 6) {
                                  return "La contraseña debe tener al menos 6 caracteres";
                                }
                                return null;
                              }),
                          TextFormField(
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.web,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    'Pagina GitHub',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(128, 0, 0, 0)),
                                  )),
                              validator: (value) {
                                if (value!.isEmpty ||!RegExp(r'^https?://(?:www\.)?[a-zA-Z0-9\-\.]+(?:\.[a-zA-Z]{2,})+(?:\/[^\s]*)?$').hasMatch(value!)) {
                                  return "Ingresa una pagina valida";
                                } else {
                                  return null;
                                }
                              }),
                          TextFormField(
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    'Numero de Telefono',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(128, 0, 0, 0)),
                                  )),
                              validator: (value) {
                                if (value!.isEmpty ||
                                    !RegExp(r'^(?!.*(\d)\1{4})[0-9]{10}$')
                                        .hasMatch(value!)) {
                                  return "Ingresa un numero de telefono correcto";
                                } else {
                                  return null;
                                }
                              }),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.white,
                            child: TextButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text('Haz quedado registrado'),
                                        content: const Text(
                                            'Volveras a la pagina principal'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                context, 'Cancel'),
                                            child: const Text('Cancelar'),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context, 'OK');
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const HomeScreen()),
                                              );
                                            },
                                            child: const Text('OK'),
                                          )
                                        ],
                                      );
                                    },
                                  );
                                }
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "REGISTRARSE",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
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

import 'package:e_commerce/controller/user_controller.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({super.key});

  UserController userController = UserController();
  //variaveis do formulario
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  get emailController => null;
  
  get passwordController => null;
  
  get userController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              width: 600,
              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('titulo_semfundo.png'),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 300.0,
                child: ListView(
                  children: [
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                          fillColor: Colors.black38,
                          labelText: 'E-mail',
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Senha', border: OutlineInputBorder()),
                    ),
                     const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {
                          userController.login(context, emailController.text, passwordController.text);
                        },
                        child: const Text('Login'))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

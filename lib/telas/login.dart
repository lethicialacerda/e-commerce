import 'package:e_commerce/controller/user_controller.dart';
import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  Login({super.key});

  UserController userController = UserController();
  //variaveis do formulario
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

 
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
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password', border: OutlineInputBorder()),
                    ),
                     const SizedBox(height: 15),
                      ElevatedButton(
                        style: ButtonStyle(
                          
                        ),
                        
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



 
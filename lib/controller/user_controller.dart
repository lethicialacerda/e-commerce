import 'package:flutter/material.dart';
import 'package:e_commerce/database/user_database.dart';
import 'package:e_commerce/telas/home_page.dart';

class UserController {
  //criamos o objeto para termos acesso a lista que fizemos nele
  UserDataBase userDataBase = UserDataBase();

  void login(context, String email, String senha) {
    //passamis os valores que estão na lista de usuários para a variavel lista
    var user = userDataBase.users;

    //uso um iterador para percorrer a lista e verificar se existe o nome passado
    //armazeno o resultado dessa iteração na variável result
    var result =
        user.where((item) => item.email == email && item.password == senha);


    if (result.isNotEmpty) {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (_) => const Homepage()), (route) => false);
    } else {
      print('Erro na senha ou usuário');
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.red,
          content: Text('Senha ou email invalido')));
    }
  }
}
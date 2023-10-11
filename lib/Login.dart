import 'package:flutter/material.dart';
import 'package:projetologin/Logado.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController campoLogin = TextEditingController();
  TextEditingController campoSenha = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Login de Usuario",
          style: TextStyle(
          fontSize: 24,
        ),),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
        child: Column(
        children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("imagens/logo.jpg",scale: 5,)
          ],
          ),
          Padding(padding: EdgeInsets.all(20),
          child: TextField(
          controller: campoLogin,
            style: TextStyle(
              fontSize: 20,
            ),
              decoration: InputDecoration(
                labelText: "Digite o Login: ",
              ),

            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(20,20,20,40),
            child: TextField(
              obscureText: true,
              controller: campoSenha,
              style: TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                labelText: "Digite a Senha: ",

              ),

            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(15),

              backgroundColor: Colors.green,
            ),
            onPressed: () {
              String login = (campoLogin.text);
              String senha = (campoSenha.text);
              if(login=="admin" && senha == "1234"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> Logado())
                );
              }else{
                print("Login ou senha incorretos");
              }

            },
            child: Text("Login".toUpperCase(),style: TextStyle(
              fontSize: 20
            )),
          ),
        ],
        ),
        ),
      ),
    );
  }
}

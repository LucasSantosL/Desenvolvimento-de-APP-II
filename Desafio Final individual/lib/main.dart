import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
    debugShowCheckedModeBanner: false,
    ),
  );
}

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _selecionarValor = false;
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerCartao = TextEditingController();
  TextEditingController _controllerTelefone = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  TextEditingController _controllerEndereco = TextEditingController();
  String _valores = "";

  void _loginUsuario() {
    String usuario = _controllerNome.text;
    String email = _controllerCartao.text;
    String senha = _controllerTelefone.text;
    String endereco = _controllerSenha.text;
    String idade = _controllerEndereco.text;

    if (usuario.isEmpty) {
      setState(() {
        _valores = 'Campo em branco';
      });
    } else if (email.isEmpty) {
      setState(() {
        _valores = 'Campo em branco';
      });
    } else if (senha.isEmpty) {
      setState(() {
        _valores = 'Campo em branco';
      });
    } else if (endereco.isEmpty) {
      setState(() {
        _valores = 'Campo em branco';
      });
    } else if (idade.isEmpty) {
      setState(() {
        _valores = 'Campo em branco';
      });
    } else {
      _valores = "OK!";
    }
    _limparCampos();
  }

  void _limparCampos() {
    _controllerNome.text = "";
    _controllerCartao.text = "";
    _controllerTelefone.text = "";
    _controllerSenha.text = "";
    _controllerEndereco.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tela de login',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.only(top: 20),
            child: Text(
              "Formulario:",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal, color: Colors.black),
            ),
            ),
            Padding(padding: EdgeInsets.only(top: 5),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle, color: Colors.blue),
                labelText: 'Digite Seu Nome:',
                labelStyle: TextStyle(color: Colors.grey),
              ),
              controller: _controllerNome,
            ),
            ),
            Padding(padding: EdgeInsets.only(top: 5),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                icon: Icon(Icons.credit_card, color: Colors.blue),
                labelText: 'Digite Os Dados Do Cartão:',
                labelStyle: TextStyle(color: Colors.grey),
              ),
              controller: _controllerCartao,
            ),
            ),
            Padding(padding: EdgeInsets.only(top: 5),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                icon: Icon(Icons.call, color: Colors.blue),
                labelText: 'Digite Seu Telefone:',
                labelStyle: TextStyle(color: Colors.grey),
              ),
              controller: _controllerTelefone,
            ),
            ),
            Padding(padding: EdgeInsets.only(top: 5),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                icon: Icon(Icons.lock, color: Colors.blue),
                labelText: 'Digite sua Senha:',
                labelStyle: TextStyle(color: Colors.grey),
              ),
              controller: _controllerSenha,
            ),
            ),
            Padding(padding: EdgeInsets.only(top: 5),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                icon: Icon(Icons.location_on, color: Colors.blue),
                labelText: 'Digite Seu Endereço:',
                labelStyle: TextStyle(color: Colors.grey),
              ),
              controller: _controllerEndereco,
            ),
            ),
            CheckboxListTile(
              title: Text(
                'Remember Information', 
                style: TextStyle(
                  color: Colors.grey, 
                  fontWeight: FontWeight.bold,
                ),
              ),
              value: _selecionarValor,
              onChanged: (_valorcheck)
              {
                setState(() {
                  if(_selecionarValor)
                  {
                    _selecionarValor = false;
                  }
                  else
                  {
                    _selecionarValor = true;
                  }
                });
              }
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              //ignore: deprecated_member_use
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.all(15),
                child: Text(
                  "Cadastrar Cliente",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: _loginUsuario),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              //ignore: deprecated_member_use
              child: RaisedButton(
                  color: Colors.redAccent[700],
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Limpar campos",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: _limparCampos),
            ),
          ],
        ),
      ),
    );
  }
}
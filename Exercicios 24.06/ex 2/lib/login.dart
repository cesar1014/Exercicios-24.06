import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final String _usuario = 'cesar';
  final String _senha = 'ifsp';

  String? _textoErroUsuario;

  final TextEditingController _controlaCampoUsuario = TextEditingController();
  final TextEditingController _controlaCampoSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        leading: null, // Remover ícone leading
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Ajustar alinhamento
        children: [
          Column(
            crossAxisAlignment:
                CrossAxisAlignment.end, // Ajustar alinhamento cruzado para end
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                child: TextField(
                  controller: _controlaCampoUsuario,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'usuário',
                    errorText: _textoErroUsuario,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                child: TextField(
                  controller: _controlaCampoSenha,
                  obscureText: true, // Esconder a senha digitada
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'senha',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: onPressed,
                child: const Text('Entrar'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void onPressed() {
    if (_usuario == _controlaCampoUsuario.text) {
      if (_senha == _controlaCampoSenha.text) {
        Navigator.of(context).pushReplacementNamed('/home');
      } else {
        limpar(); // Chamar a função limpar
      }
    } else {
      setState(() {
        _textoErroUsuario = 'Usuário não encontrado!';
      });
      limpar(); // Chamar a função limpar
    }
  }

  void limpar() {
    _controlaCampoUsuario.text = '';
    _controlaCampoSenha.text = '';
  }
}

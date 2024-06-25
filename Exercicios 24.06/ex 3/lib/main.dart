import 'package:flutter/material.dart';
import 'cep.dart';
import 'pagamento.dart';
import 'tabela.dart';

void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Sample'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Produtos',
              ),
              Tab(
                text: 'Endereço',
              ),
              Tab(
                text: 'Pagamento',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Tabela(),
            ),
            Center(
              child: CEP(),
            ),
            Center(
              child: Pagamento(),
            ),
          ],
        ),
      ),
    );
  }
}

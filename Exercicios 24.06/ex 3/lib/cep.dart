import 'package:flutter/material.dart';

class CEP extends StatefulWidget {
  const CEP({super.key});

  @override
  State<CEP> createState() => _CEPState();
}

class _CEPState extends State<CEP> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('CEP:'),
            const SizedBox(
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                  hintText: '99999-999',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Text('Rua:'),
            const SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Rua',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Text('Número:'),
            const SizedBox(
              width: 100,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Número',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Text('Bairro:'),
            const SizedBox(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Bairro',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Text('Cidade:'),
            const SizedBox(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Cidade',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Text('Estado:'),
            const SizedBox(
              width: 100,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Estado',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

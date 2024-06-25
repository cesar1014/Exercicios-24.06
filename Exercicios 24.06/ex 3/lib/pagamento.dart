import 'package:flutter/material.dart';

class Pagamento extends StatefulWidget {
  const Pagamento({super.key});

  @override
  State<Pagamento> createState() => _PagamentoState();
}

class _PagamentoState extends State<Pagamento> {
  int? _selectedMethod = 1;

  void _showNotification(String method) {
    final snackBar = SnackBar(content: Text('Método de pagamento: $method'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Método:',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        DropdownButton<int>(
          value: _selectedMethod,
          items: const [
            DropdownMenuItem(
              value: 1,
              child: Text('Cartão de crédito'),
            ),
            DropdownMenuItem(
              value: 2,
              child: Text('Pix'),
            ),
            DropdownMenuItem(
              value: 3,
              child: Text('Dinheiro'),
            ),
          ],
          onChanged: (int? valor) {
            setState(() {
              _selectedMethod = valor;
              if (valor == 1) {
                _showNotification('Cartão de crédito');
              } else if (valor == 2) {
                _showNotification('Pix');
              } else if (valor == 3) {
                _showNotification('Dinheiro');
              }
            });
          },
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<Map<String, dynamic>> options = [
    {
      'title': 'Escanear Código Qr & Barras',
      'route': '/scan_code',
      'icon': Icons.qr_code,
    },
    {
      'title': 'Generar código QR',
      'route': '/generator_qr',
      'icon': Icons.qr_code_scanner,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScanPRO'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenidos',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 32),
            ListView.builder(
              shrinkWrap: true,
              itemCount: options.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, options[index]['route']);
                    },
                    leading: Icon(options[index]['icon']),
                    title: Text(options[index]['title']),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

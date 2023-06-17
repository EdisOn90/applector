import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class lectorCodigos extends StatefulWidget {
  @override
  _lectorCodigosState createState() => _lectorCodigosState();
}

class _lectorCodigosState extends State<lectorCodigos> {
  String scannedBarcode = 'Escaner de Códigos Qr & Barras:';

  Future<void> _scanBarcode() async {
    String barcode = await FlutterBarcodeScanner.scanBarcode(
      '#FF0000',
      'Cancel',
      true,
      ScanMode.BARCODE,
    );

    if (barcode != '-1') {
      setState(() {
        scannedBarcode = 'Scanned Barcode: $barcode';
      });
    } else {
      setState(() {
        scannedBarcode = 'Scan cancelled';
      });
    }
  }

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
              scannedBarcode,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _scanBarcode,
              child: Text('Start Scan'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
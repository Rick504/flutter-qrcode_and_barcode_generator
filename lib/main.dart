import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

// TIPOS DE CÓDIGOS DE BARRAS -------------->>>>> https://pub.dev/packages/barcode/example

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

// TIPOS DE CÓDIGOS DE BARRAS -------------->>>>> https://pub.dev/packages/barcode/example

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Barcode demo'),
      ),
      body: Center(
        child: Column(
          children: [
            BarcodeWidget(
              barcode: Barcode.aztec(), // Barcode type and settings
              data: 'Test do Rick', // Content
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 50),
            BarcodeWidget(
              barcode: Barcode.codabar(), // Barcode type and settings
              data: '88552', // Content
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}

// TIPOS DE CÓDIGOS DE BARRAS -------------->>>>> https://pub.dev/packages/barcode/example

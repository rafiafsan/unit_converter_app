import 'package:flutter/material.dart';

class Unitconverter extends StatefulWidget {
  const Unitconverter({super.key});

  @override
  State<Unitconverter> createState() => _UnitconverterState();
}

class _UnitconverterState extends State<Unitconverter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Unit Converter',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Unitconverter extends StatefulWidget {
  const Unitconverter({super.key});

  @override
  State<Unitconverter> createState() => _UnitconverterState();
}

class _UnitconverterState extends State<Unitconverter> {
  TextEditingController controller = TextEditingController();
  String fromUnit = 'Meters';
  String toUnit = 'Kilometers';
  double result = 0.0;

  final Map<String, dynamic> convertionTypes = {
    'Meters': 1.0,
    'Kilometers': 0.001,
    'Centimeters': 100,
    'Inches': 39.37,
    'Feet': 3.28084,
  };

  convert() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Unit Converter',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: controller,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DropdownButton<String>(
                value: fromUnit,
                items: convertionTypes.keys.map(
                      (x) {
                    return DropdownMenuItem(
                      child: Text(x),
                      value: x,
                    );
                  },
                ).toList(),
                onChanged: (value) {
                  fromUnit = value!;
                },
              ),
              Text('to',style: TextStyle(fontSize: 17),),
              DropdownButton<String>(
                value: toUnit,
                items: convertionTypes.keys.map(
                      (x) {
                    return DropdownMenuItem(
                      child: Text(x),
                      value: x,
                    );
                  },
                ).toList(),
                onChanged: (value) {
                  fromUnit = value!;
                },
              ),
            ],
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            convert();
          }, child: Text('Convert'))
        ],
      ),
    );
  }
}

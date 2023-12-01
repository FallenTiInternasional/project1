import 'package:flutter/material.dart';

void main() => runApp(const CalculatorApp());

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _output = "";
  String _currentNumber = "";
  double _num1 = 0;
  String _operator = "";
  bool _operatorSelected = false;

  void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        _output = "";
        _currentNumber = "";
        _num1 = 0;
        _operator = "";
        _operatorSelected = false;
      } else if (buttonText == "+" ||
          buttonText == "-" ||
          buttonText == "x" ||
          buttonText == "/") {
        if (_operatorSelected) {
          double num2 = double.parse(_currentNumber);
          double result = _performOperation(_num1, num2, _operator);
          _num1 = result;
          _currentNumber = result.toString();
        } else {
          _num1 = double.parse(_currentNumber);
          _currentNumber = "";
        }
        _operator = buttonText;
        _operatorSelected = true;
      } else if (buttonText == "=") {
        if (_operatorSelected) {
          double num2 = double.parse(_currentNumber);
          double result = _performOperation(_num1, num2, _operator);
          _output = result.toString();
          _operatorSelected = false;
        }
      } else {
        _currentNumber += buttonText;
      }
    });
  }

  double _performOperation(double num1, double num2, String operator) {
    switch (operator) {
      case "+":
        return num1 + num2;
      case "-":
        return num1 - num2;
      case "x":
        return num1 * num2;
      case "/":
        return num1 / num2;
      default:
        return num2;
    }
  }

  Widget _buildButton(
      String buttonText, double buttonHeight, Color buttonColor) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => _buttonPressed(buttonText),
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          minimumSize: Size(double.infinity, buttonHeight),
        ),
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
            child: Text(
              _output,
              style: const TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            // Container baru untuk menampilkan angka yang dimasukkan saat ini
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            child: Text(
              _currentNumber,
              style: const TextStyle(
                fontSize: 24.0,
              ),
            ),
          ),
          const Expanded(
            child: Divider(),
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  _buildButton("7", 100, const Color.fromARGB(255, 94, 209, 224)),
                  _buildButton("8", 100, const Color.fromARGB(255, 94, 209, 224)),
                  _buildButton("9", 100, const Color.fromARGB(255, 94, 209, 224)),
                  _buildButton("/", 100, const Color.fromARGB(109, 24, 134, 189)),
                ],
              ),
              Row(
                children: <Widget>[
                  _buildButton("4", 100, const Color.fromARGB(255, 94, 209, 224)),
                  _buildButton("5", 100, const Color.fromARGB(255, 94, 209, 224)),
                  _buildButton("6", 100, const Color.fromARGB(255, 94, 209, 224)),
                  _buildButton("x", 100, const Color.fromARGB(109, 24, 134, 189)),
                ],
              ),
              Row(
                children: <Widget>[
                  _buildButton("1", 100, const Color.fromARGB(255, 94, 209, 224)),
                  _buildButton("2", 100, const Color.fromARGB(255, 94, 209, 224)),
                  _buildButton("3", 100, const Color.fromARGB(255, 94, 209, 224)),
                  _buildButton("-", 100, const Color.fromARGB(109, 24, 134, 189)),
                ],
              ),
              Row(
                children: <Widget>[
                  _buildButton("C", 100, const Color.fromARGB(255, 18, 141, 235)),
                  _buildButton("0", 100, const Color.fromARGB(255, 94, 209, 224)),
                  _buildButton("+/-", 100, const Color.fromARGB(255, 94, 209, 224)),
                  _buildButton("+", 100, const Color.fromARGB(109, 24, 134, 189)),
                ],
              ),
              Row(
                children: <Widget>[
                  _buildButton("%", 100, const Color.fromARGB(255, 94, 209, 224)),
                  _buildButton("=", 100, const Color.fromARGB(109, 24, 134, 189)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

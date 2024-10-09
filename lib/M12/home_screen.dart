import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _firstTEController = TextEditingController();
  final TextEditingController _secondTEController = TextEditingController();

  double _result = 0;
  String _errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("CALCULATOR"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            TextField(
              controller: _firstTEController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter Your First Number",
                prefixIcon: Icon(Icons.arrow_forward_ios),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _secondTEController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter Your Second Number",
                prefixIcon: Icon(Icons.arrow_forward_ios),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 50, left: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: _onTabAdd,
                    child: const Text(
                      "+",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _onTabSubtract,
                    child: const Text(
                      "-",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _onTabMultiply,
                    child: const Text(
                      "X",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _onTabDivide,
                    child: const Text(
                      "/",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Column(
              children: [
                if (_errorMessage.isNotEmpty)
                  Text(
                    _errorMessage,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                else
                  Text(
                    "Result Is: $_result",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w900,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _onTabAdd() {
    double? firstNumber = double.tryParse(_firstTEController.text);
    double? secondNumber = double.tryParse(_secondTEController.text);

    if (firstNumber != null && secondNumber != null) {
      setState(() {
        _result = firstNumber + secondNumber;
        _errorMessage = '';
      });
    } else {
      setState(() {
        _errorMessage = 'Please enter valid numbers';
      });
    }
  }

  void _onTabSubtract() {
    double? firstNumber = double.tryParse(_firstTEController.text);
    double? secondNumber = double.tryParse(_secondTEController.text);

    if (firstNumber != null && secondNumber != null) {
      setState(() {
        _result = firstNumber - secondNumber;
        _errorMessage = '';
      });
    } else {
      setState(() {
        _errorMessage = 'Please enter valid numbers';
      });
    }
  }

  void _onTabMultiply() {
    double? firstNumber = double.tryParse(_firstTEController.text);
    double? secondNumber = double.tryParse(_secondTEController.text);

    if (firstNumber != null && secondNumber != null) {
      setState(() {
        _result = firstNumber * secondNumber;
        _errorMessage = '';
      });
    } else {
      setState(() {
        _errorMessage = 'Please enter valid numbers';
      });
    }
  }

  void _onTabDivide() {
    double? firstNumber = double.tryParse(_firstTEController.text);
    double? secondNumber = double.tryParse(_secondTEController.text);

    if (firstNumber != null && secondNumber != null) {
      if (secondNumber != 0) {
        setState(() {
          _result = firstNumber / secondNumber;
          _errorMessage = '';
        });
      } else {
        setState(() {
          _errorMessage = 'Division by zero is not allowed';
        });
      }
    } else {
      setState(() {
        _errorMessage = 'Please enter valid numbers';
      });
    }
  }
}

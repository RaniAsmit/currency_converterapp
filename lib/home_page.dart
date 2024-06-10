// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePageMaterialPage extends StatefulWidget {
  const HomePageMaterialPage({super.key});

  @override
  State<HomePageMaterialPage> createState() => _HomePageMaterialPageState();
}

class _HomePageMaterialPageState extends State<HomePageMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        elevation: 0,
        title: const Text('Currency Converter'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'INR $result',
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            TextField(
              controller: textEditingController,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: 'enter text in USD',
                  hintStyle: const TextStyle(
                    color: Colors.white70,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on),
                  filled: true,
                  fillColor: Colors.grey,
                  prefixIconColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2.0,
                      style: BorderStyle.solid,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  )),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
                signed: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 74;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.black, width: 2.0),
                  ),
                ),
                child: const SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    child: Text(
                      'convert',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

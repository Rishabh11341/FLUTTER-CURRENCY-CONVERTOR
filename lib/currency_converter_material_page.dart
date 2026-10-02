import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
   @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {

  double result = 0;
  final TextEditingController textEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    final border=OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF30343B),
                    width: 1,
                    style: BorderStyle.solid,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20),
                  ),
                );
    return Scaffold(
      backgroundColor: const Color(0xFF0F1115),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F1115),
        centerTitle: true,
        elevation: 0,
        title: Text('CURRENCY CONVERTOR',
        style: TextStyle(color: Colors.white,
        fontWeight: FontWeight.w600,
        ),
        
        ),
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '₹ ${result.toStringAsFixed(2)}',
              style: const TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              ),
            ),
            const Text(
           'USD → INR',
            style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
  ),
),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: TextStyle(
                  color: Colors.white60,
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 18,
                  ),
                  hintText: 'Please Input the Amount in USD',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: const Color(0xFF6C63FF),
                  filled: true,
                  fillColor: Colors.black87,
                  focusedBorder: border,
                  enabledBorder: border,
                  
                ),
                keyboardType: TextInputType.number,
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {
                setState(() {
                  result=double.parse(textEditingController.text)*96.27;
                });
              }, 
              
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF6C63FF),
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                ),
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NewHomePage extends StatelessWidget {
  const NewHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter, // Start gradient from the top center
            end: Alignment.bottomCenter, // End gradient at the bottom center
            colors: [
              Color(0xff1cdac5),
              Color(0xffefeaea),
            ],
            stops: [0.5, 0.5], // Define stops to split the gradient evenly
          ),
        ),
        child: Center(
          child: Container(
            height: 550,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset('assets/ui5.png'),
                  ),
                  Row(
                    children: [
                      Text("About us",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                    ],
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text("Ladies and gentlemen, as we gather today, let us reflect on our shared journey. Through challenges and triumphs, we've grown stronger. Together, let's embrace unity, empathy, and hope. Our future is bright when we stand united. Thank you.")),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
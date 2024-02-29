import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height*.5,
                decoration: BoxDecoration(
                  color: Colors.teal.shade400
                ),
              ),
              Container(
                height: height*.5,
                decoration: BoxDecoration(
                    color: Colors.white12,
                ),
              ),
            ],
          ),

          Center(
            child: Stack(
              children: [
                Container(
                  height: 550,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
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
              ],
            ),
          ),

        ],
      ),
    );
  }
}

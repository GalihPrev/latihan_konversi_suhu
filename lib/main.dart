import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController text1 = TextEditingController();
  double kelvin = 0, reamor = 0, input = 0;

  konversi() {
    setState(() {
     input = double.parse(text1.text);
      kelvin = input + 273;
      reamor = input * 4 / 5;

    });
  }
  @override
  Widget build(BuildContext context) {
    var text1;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Konversi Suhu')),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFormField(
                controller: text1,
                decoration: InputDecoration(hintText: "Masukkan Suhu"),
                
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "Suhu Dalam Kelvin",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "$kelvin",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Suhu Dalam Reamor",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "$reamor",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: konversi,
                  child:  Text(
                    "Konversi",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

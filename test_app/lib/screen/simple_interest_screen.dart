import 'package:flutter/material.dart';
import 'package:test_app/app/models/simple_interest_model.dart';

import '../models/simple_interest_model.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});


  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  final key = GlobalKey<FormState>();

  double result = 0;
  double? principle;
  double? rate;
  double? time;

  SimpleInterest?simpleInterestModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Arithmetic"),
        backgroundColor: Colors.blue[200],
        centerTitle: true,
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                  onChanged: (value){
                    principle = double.parse(value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Enter principle', border: OutlineInputBorder())
              ),
              const SizedBox(height: 10,),
              TextFormField(
                onChanged: (value){
                  rate= double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Enter rate',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  enabledBorder:OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),

              ),
              const SizedBox(height: 10,),
              TextField(
                onChanged: (value){
                  time = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Enter time', border: OutlineInputBorder()),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      simpleInterestModel=
                      SimpleInterest(p: principle!, t: time!, r: rate!);
                      result = simpleInterestModel!.si();
                    });
                  },
                  child: const Text('Calculate', style: TextStyle(fontSize: 30),),
                ),
              ),
              const SizedBox(height: 20),

              const SizedBox(height: 20),
              Text(
                'Result: $result',
                style: const TextStyle(fontSize: 20),
              ),
              RichText(
                  text : const TextSpan(
                      text: 'Hello ',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize:40,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'bold',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                            backgroundColor: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ' World!',

                        )
                      ]
                  )
              ),
              RichText(
                  text : const TextSpan(
                      text: 'M',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize:60,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'y',
                          style: TextStyle(
                            color: Colors.black,
                                fontSize: 40,
                          ),
                        ),
                        TextSpan(
                          text: ' name is Abhilekh Yonjan ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                          ),

                        )
                      ]
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
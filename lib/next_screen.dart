import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled56/tarixiy_joylar.dart';

class NextScreen extends StatefulWidget {
  final TarixiyJoylar tarixiyJoylar;

  const NextScreen({Key? key, required this.tarixiyJoylar}) : super(key: key);

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tarixiyJoylar.nomi),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                child: Image(
                  image: AssetImage(widget.tarixiyJoylar.rasm),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.tarixiyJoylar.malumot.toString(),style: TextStyle(fontSize: 24),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
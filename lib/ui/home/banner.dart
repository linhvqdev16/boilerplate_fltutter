import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BannerScreen extends StatefulWidget{
  const BannerScreen({Key? key}): super(key: key);

  @override
  _BannerScreenState createState() => _BannerScreenState();
}

class _BannerScreenState extends State<BannerScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BANNER"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(
        child: Text("Hello")
        ),
    );
  }

}
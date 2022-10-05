import 'package:flutter/cupertino.dart';
import 'package:marquee/marquee.dart';

class HomePageScreen extends StatefulWidget {
   const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen>{


  List<String> list  = [];

  ScrollController scrollController = ScrollController();

  bool isFirst = true;

  String string = "";

  @override
  void initState(){
    super.initState();
  }

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    initData();
  }

  void initData(){
    if(isFirst){
      list = ["A" , "B", "C", "D", "E", "F", "G", "H", "I", "K", "L", "A" , "B", "C", "D", "E", "F", "G", "H", "I", "K", "L" , "A" , "B", "C", "D", "E", "F", "G", "H", "I", "K", "L" , "A" , "B", "C", "D", "E", "F", "G", "H", "I", "K", "L", "A" , "B", "C", "D", "E", "F", "G", "H", "I", "K", "L"];
      string = list.join(" ");
      isFirst = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Marquee(
      text: string,
      style: const TextStyle(fontWeight: FontWeight.bold),
      scrollAxis: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.start,
      blankSpace: 20.0,
      velocity: 100.0,
      pauseAfterRound: const Duration(milliseconds: 100),
      startPadding: 10.0,
      accelerationDuration: const Duration(seconds: 5),
      accelerationCurve: Curves.linear,
      decelerationDuration: const Duration(milliseconds: 2500),
      decelerationCurve: Curves.easeOut,
    );
  }

  @override
  void dispose(){
    super.dispose();
    scrollController.dispose();
  }

}
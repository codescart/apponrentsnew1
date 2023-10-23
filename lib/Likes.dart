import 'package:flutter/material.dart';

class Likes extends StatefulWidget {
  Likes({super.key,  required this.lkstatus, required this.icon,required this.count});



  final String lkstatus;

  final IconData icon;
  final String count;
  @override
  State<Likes> createState() => _LikesState();
}

class _LikesState extends State<Likes> {
  var raja='';
  late int _counter;


  @override
  initState() {
    setState(() {
      _counter = int.parse(widget.count);
      raja=widget.lkstatus;
    });
    print("initState Called");
  }
  _incrementCounter() {


    if(raja=='1'){
      print('plus');
      setState(() {
        _counter++;
        raja='1';

      });
    }else{
      print('minus');

      setState(() {
        _counter--;
        raja='';

      });
    }

  }

  @override
  Widget build(BuildContext context) {

    return Container(

      child: Row(
        children: [
          IconButton(icon: Icon(widget.icon, color: raja== ''? Colors.grey:Colors.red,),onPressed: (){_incrementCounter();},),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

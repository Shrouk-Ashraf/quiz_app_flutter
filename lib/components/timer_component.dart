import 'package:flutter/material.dart';
import 'package:linear_timer/linear_timer.dart';
import 'package:quiz_app/components/options_component.dart';

import '../views/show_result_view.dart';

class TimerComponent extends StatefulWidget {
  const TimerComponent({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  State<TimerComponent> createState() => _TimerComponentState();
}

class _TimerComponentState extends State<TimerComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 15),
      child: SizedBox(
        height: 15,
        width: double.infinity,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: LinearTimer(
            duration: const Duration(seconds: 30,),
            backgroundColor: Colors.deepOrange,
            color: Colors.orangeAccent,
            onTimerEnd: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return ShowResultView(name: widget.name,result: result,);
                    }));
              });

            },
          ),
        ),
      ),
    );
  }
}

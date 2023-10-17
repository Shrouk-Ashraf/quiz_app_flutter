import 'package:flutter/material.dart';
import 'package:quiz_app/components/options_component.dart';
import 'package:quiz_app/components/question_card.dart';
import 'package:quiz_app/components/timer_component.dart';
import 'package:quiz_app/models/questions_model.dart';
import 'package:quiz_app/models/result_data.dart';
import 'package:quiz_app/views/show_result_view.dart';

class BodyComponent extends StatefulWidget {
  const BodyComponent({Key? key, required this.sample, required this.name}) : super(key: key);
  final  QuestionsModel sample;
  final  name;

  @override
  State<BodyComponent> createState() => _BodyComponentState();
}

class _BodyComponentState extends State<BodyComponent> with TickerProviderStateMixin {

  late  QuestionsModel newSample =widget.sample ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/img.png"),
            fit: BoxFit.cover
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TimerComponent(name: widget.name,),
            const SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text("Question ${newSample.id}",style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 30
                  ),),
                  Text("/${sampleData.length}",style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 20
                  ),),
                ],
              ),
            ),
            const Divider(thickness: 1,color: Colors.grey,indent: 15,endIndent: 15,),
            const SizedBox(height: 20,),
            Expanded(child:
              QuestionCard(data: newSample,resultData: ResultData())
            ),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      if(newSample.id < sampleData.length) {
                        newSample = sampleData[newSample.id];
                      }else{
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context){
                              return ShowResultView(name: widget.name,result: result,);
                            }));
                      }
                    });

                  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      fixedSize: const Size(100, 40)
                    ),
                      child: const Text("Next",style: TextStyle(fontSize:20),)
                    ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}

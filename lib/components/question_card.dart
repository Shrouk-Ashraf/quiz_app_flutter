import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_model.dart';
import 'package:quiz_app/models/result_data.dart';

import 'options_component.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({Key? key, required this.data,required this.resultData }) : super(key: key);
  final QuestionsModel data;
  final ResultData resultData;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(25) ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(data.question,style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),),
          ),
          const SizedBox(height: 15,),
          ...List.generate(data.options.length, (index)
          => OptionComponent(id: data.id,
            text: data.options[index], answer: data.answerIndex
            , index: index,resultData: resultData,))
        ],
      ),
    );
  }

}

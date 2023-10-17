
import 'package:flutter/material.dart';
import 'package:quiz_app/components/body_component.dart';

import '../models/questions_model.dart';


class QuizView extends StatefulWidget {
  const QuizView({Key? key}) : super(key: key);

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments ;
    return  Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,

      ),
      body:BodyComponent(sample: sampleData[0], name: data,)
    );
  }
}

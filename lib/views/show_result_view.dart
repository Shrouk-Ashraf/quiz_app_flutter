import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_model.dart';
import 'package:quiz_app/views/welcome_view.dart';

class ShowResultView extends StatelessWidget {
  const ShowResultView({Key? key,required this.name, required this.result}) : super(key: key);

  final String name;
  final int result;
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
              image: AssetImage("assets/images/img.png"),
              fit: BoxFit.cover
              ),
            ),
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Congratulations,",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 45
                  ),),
                const SizedBox(height: 10,),
                Text(name.toUpperCase(),style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 45
                ),),
                const SizedBox(height: 45,),
                Text("Your Score is : ${result} / ${sampleData.length}"
                  ,style: const TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 30
                ),),
                const SizedBox(height: 80,),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                          return const WelcomeView();
                        }));

                  },
                      style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      child: const Text("Let's take another quiz",style: TextStyle(
                          fontSize: 18
                      ),
                      )),
                )
              ],
            ),
          ),
        )
    );
  }
}

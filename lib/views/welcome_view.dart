import 'package:flutter/material.dart';
import 'package:quiz_app/components/options_component.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  var nameController = TextEditingController();
  final String routeName = '/quiz_view';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    result = 0;
    return  Scaffold(
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
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Let's take a Quiz,\nin 30 Seconds...",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 40
                ),),
                const SizedBox(height: 80,),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  style: const TextStyle(
                    color: Colors.white
                  ),
                  controller: nameController,
                  decoration:  const InputDecoration(
                    labelStyle:  TextStyle(
                      color: Colors.orange
                    ),
                    filled: true,
                    fillColor: Color(0xff393F5A),
                    labelText: "Enter Your Name",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)
                    ),
                  ),
                ),
                const SizedBox(height: 60,),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    if (_formKey.currentState!.validate()) {
                      final data = nameController.text;
                      Navigator.pushNamed(context, routeName,
                          arguments: data);
                    }
                  },
                      style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      child: const Text("Let's take a quiz",style: TextStyle(
                        fontSize: 18
                      ),
                      )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

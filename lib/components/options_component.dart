import 'package:flutter/material.dart';
import 'package:quiz_app/models/result_data.dart';

int result =0;
class OptionComponent extends StatefulWidget {
   const OptionComponent({
    super.key,required this.id,required this.text,required this.answer
     ,required this.index, required this.resultData
  });

  final id, text, answer;
  final int index;
  final ResultData resultData;

  @override
  State<OptionComponent> createState() => _OptionComponentState();
}

class _OptionComponentState extends State<OptionComponent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
        decoration: BoxDecoration(
            border: Border.all(color: getColor()),
            borderRadius: BorderRadius.circular(15)
        ),
        child: ListTile(
          onTap: (){
            setState(() {
              if(!widget.resultData.isSubmitted){
                widget.resultData.selectedAns = widget.index;
                widget.resultData.isSubmitted = true;
                if(widget.resultData.selectedAns == widget.answer){
                  result++;
                  print(result);
                }
               }
            });
          },selected: true,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text("${widget.index+1}.  ${widget.text} ",style:  TextStyle(
                color: getColor(),
                fontSize: 20,
            ),
            ),
          ),
          trailing:Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              color: getColor()== Colors.grey ? Colors.transparent : getColor(),
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: getColor())
            ),
            child:getColor() ==Colors.grey ? null :
                          Icon(getIcon(),size: 16,color: Colors.white,)
          ) ,
        ),
      ),
    );

  }

  Color getColor(){
    if(widget.resultData.isSubmitted){
      if(widget.resultData.selectedAns == widget.answer){//correct answer
        return Colors.green;
      }if(widget.resultData.selectedAns != widget.answer
          && widget.index == widget.resultData.selectedAns){
        return Colors.red;
      }
      return Colors.grey;
    }
    return Colors.grey;
  }
  IconData getIcon(){
    if (getColor() == Colors.green){
      return Icons.done;
    }
    else {
      return Icons.close;
    }
  }
}

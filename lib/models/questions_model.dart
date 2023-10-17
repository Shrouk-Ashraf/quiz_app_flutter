class QuestionsModel{
  final int id;
  final int answerIndex;
  final String question;
  final List<String> options;


  QuestionsModel({required this.id, required this.answerIndex, required this.question, required this.options});
}

List<QuestionsModel> sampleData=[
  QuestionsModel(id: 1, answerIndex: 2
      , question: 'Constructors are used to_______'
      , options: ["To build a user interface","Free Memory","Initialize new object","To create a sub-class"]
  ),
  QuestionsModel(id: 2, answerIndex: 3,
      question: 'An object that has more than one form is referred to as_______',
      options: ["Inheritance","Interface","Abstract class","Polymorphism"]
  ),
  QuestionsModel(id: 3, answerIndex: 1,
      question: 'Information Hiding can also be termed as_______',
      options: ["Data hiding","Encapsulation","Inheritance","Polymorphism"]
  ),
  QuestionsModel(id: 4, answerIndex: 0,
      question: 'Pick the term that relates to polymorphism_______',
      options: ["Data binding","Dynamic allocation","Static typing","Static allocation"]
  ),
  QuestionsModel(id: 5, answerIndex: 0,
      question: 'The keyword which is used to access the method or member variables from the superclass_______',
      options: ["Super","Using","Is_a","Has_a"])
];

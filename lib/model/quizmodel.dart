class QuizModel {
  String title;
  List<String> candidates;
  int answer;

  QuizModel({required this.title, required this.candidates, required this.answer});

  QuizModel.fromMap(Map<String, dynamic> map)
      : title = map['title'],
        candidates = map['candidates'],
        answer = map['answer'];
}

class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Medium Question, Correct Ans : 2",
    "options": ['ESFJ and ENFJ', 'ISFJ and INFJ','ESFJ and ENFJ', 'ISFJ and INFJ'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Medium Question, Correct Ans : 1",
    "options": ['ESFJ and ENFJ', 'ISFJ and INFJ','ESFJ and ENFJ', 'ISFJ and INFJ'],
    "answer_index": 0,
  },
  {
    "id": 3,
    "question": "Medium Question, Correct Ans : 2",
    "options": ['ESFJ and ENFJ', 'ISFJ and INFJ','ESFJ and ENFJ', 'ISFJ and INFJ'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "Medium Question, Correct Ans : 1",
    "options": ['ESFJ and ENFJ', 'ISFJ and INFJ','ESFJ and ENFJ', 'ISFJ and INFJ'],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question": "What mbti types are Fe-doms?",
    "options": ['ESFJ and ENFJ', 'ISFJ and INFJ','ESFJ and ENFJ', 'ISFJ and INFJ'],
    "answer_index": 1,
  },
];
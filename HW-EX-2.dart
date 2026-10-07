double computeAverage(List<int> scores){
  double sum = 0.0;
  double avg = 0.0;

  for(int i = 0; i < scores.length; i++){
    sum += scores[i];
  }

  avg = sum / scores.length;

  return avg;
}

List<int> getScoreFromCourse (List<Map<String,Object>> students ,String courseName){ // I don't want to type the score in menually =^=
  List<int> scores = [];
  for (int i = 0; i < students.length; i++){
    int? score = students[i][courseName] as int;
    scores.add(score);
  }

  return scores;
}

void main() {
  final students = [
    {
      "name": "Dara",
      "Dart": 70,
      "Flutter": 80,
      "Database": 60,
    },
    {
      "name": "Sokha",
      "Dart": 50,
      "Flutter": 90,
      "Database": 70,
    },
    {
      "name": "Lina",
      "Dart": 80,
      "Flutter": 70,
      "Database": 90,
    },
  ];

  final courses = ["Dart", "Flutter", "Database"];

  List<int> dartScores = getScoreFromCourse(students, "Dart");
  List<int> flutterScores = getScoreFromCourse(students, "Flutter");
  List<int> databaseScores = getScoreFromCourse(students, "Database");

  print("Dart Scores: ${dartScores}");
  print("Flutter Scores: ${flutterScores}");
  print("Database Scores: ${databaseScores}");
  print("================ AVERAGE =================");
  print("Dart: ${computeAverage(dartScores)}");
  print("Flutter: ${computeAverage(flutterScores)}");
  print("Database: ${computeAverage(databaseScores)}");
  
}
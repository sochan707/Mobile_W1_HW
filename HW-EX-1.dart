void main() {
  Map<String,int> scores = {
    "Dara": 78,
    "Sokha": 45,
    "Lina": 62,
    "Vanna": 39,
    "Mony": 85
  };

  List<String> getPassedStudents(Map<String,int> scores){
    List<String> names = [];

    for (var s in scores.entries){
      if (s.value >= 50){
        names.add(s.key);
      }
    }

    return names;
  }

  print(getPassedStudents(scores));

}
void main(){
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]},
  ];

  Map<String, dynamic> AverageScores = {};
  for (var student in students){
    String name = student['name'];
    List<int> scores = List<int>.from(student['scores']);
    double Average = scores.reduce((a, b) => a+b)/scores.length;

    Average = double.parse(Average.toStringAsFixed(2));
    AverageScores[name] = Average;
  }
  var sortScores = AverageScores.entries.toList()
  ..sort((a, b) => b.value.compareTo(a.value));

  Map<String, double> sortAverageScores = {
    for(var descendingValue in sortScores) descendingValue.key : descendingValue.value
  };


  print("After descending Order of average scores are:");
  sortAverageScores.forEach((name, Average) {
    print("$name: $Average");
  });

}
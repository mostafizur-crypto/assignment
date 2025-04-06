void main() {
  List<Map<String, dynamic>> students = [
    {
      "name": "Alice",
      "scores": [85, 90, 78]
    },
    {
      "name": "Bob",
      "scores": [88, 76, 95]
    },
    {
      "name": "Charlie",
      "scores": [90, 92, 85]
    }
  ];

  // Step 1: Calculate average scores
  Map<String, double> averages = {};
  for (var student in students) {
    String name = student['name'];
    List<int> scores = List<int>.from(student['scores']);
    double average = scores.reduce((a, b) => a + b) / scores.length;
    averages[name] = double.parse(average.toStringAsFixed(2));
  }

  // Step 2: Sort by average score in descending order
  var sortedEntries = averages.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  Map<String, double> sortedAverages = {
    for (var entry in sortedEntries) entry.key: entry.value
  };

  // Step 3: Print the result
  print(sortedAverages);
}

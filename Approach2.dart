// Apoproach 2
class Student {
  String? name;
  int? math;
  int? science;
  int? english;

  // Constructor will required but nullable attributes given a default value
  Student({
     this.name = 'Unknown',
     this.mark1 = 0,
     this.mark2 = 0,
     this.mark3 = 0,
  });


  double average() {
    int m = math ?? 0;
    int s = science ?? 0;
    int e = english ?? 0;
    return (m + s + e) / 3.0;
  }

  String grade() {
    double avg = average();
    if (avg >= 90) return 'A';
    if (avg >= 80) return 'B';
    if (avg >= 70) return 'C';
    if (avg >= 60) return 'D';
    if (avg >= 50) return 'E';
    return 'F';
  }

  void displayResult() {
    print('Student: ${name ?? 'Unknown'}');
    print('Scores: Math=${math ?? 0}, Science=${science ?? 0}, English=${english ?? 0}');
    print('Average: ${average().toStringAsFixed(2)}');
    print('Grade: ${grade()}');
  }
}

void main() {
  // Example usage
  var s = Student(name: null, math: null, science: 75, english: 88);
  s.displayResult();
}
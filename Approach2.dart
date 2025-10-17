// Apoproach 2
class Student {
  String? name;
  int? mark1;
  int? mark2;
  int? mark3;

  // Constructor will required but nullable attributes given a default value
  Student({
     this.name = 'Unknown',
     this.mark1 = 0,
     this.mark2 = 0,
     this.mark3 = 0,
  });


  double average() {
    int markOne = mark1 ?? 0;
    int markTwo = mark2 ?? 0;
    int markThree = mark3 ?? 0;
    return (markOne + markTwo + markThree) / 3.0;
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
    print('Scores: mark1=${mark1 ?? 0}, mark2=${mark2 ?? 0}, mark3=${mark3 ?? 0}');
    print('Average: ${average().toStringAsFixed(2)}');
    print('Grade: ${grade()}');
  }
}

void main() {
  // Example usage
  var student = Student(name: null, mark1: null, mark2: 75, mark3: 88);
  student.displayResult();
}
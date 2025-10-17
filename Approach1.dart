//Create a dart program that accepts a student's name and scores for three subjects, then calculates the average markand it must display the grade using a method eg Grades (A, B, C, D, E ,F) 
//Approach one, Create the same program without using a list and ensure that the attributtes on the class are required (Don't use null safety)
// Approach two, in a different file: make use of the same program, make sure you have properties as well, but the properties should not be a list. Ensure that the attributes are nullable with a default value to ensure that we do not have/get a null exception
// Utilize the same program to have a list to store the marks and the properties of this class in this approach must be required, the average mark function must use a basic or beginner approach (no mark.reduce) ensure that all apoproaches utilize a constructoer and in all approaches you must have the right output.
// For the flutter introduction:
// Group work: Go through the notes introducing flutter (project structure: hands on profile card):

// Approach one
// Approach 1: No List, all attributes required, no null safety (pre-null-safety style)
// Note: In modern Dart (with null safety), you would annotate types as non-nullable
// and use 'required' in the constructor. Here we keep it simple as requested.

class Student {
  String name;
  int mark1;
  int mark2;
  int mark3;

  // Constructor with all attributes required
  Student({
    required this.name,
    required this.mark1,
    required this.mark2,
    required this.mark3,
  });

  double average() {
    double output = (mark1 + mark2 + mark3) / 3;
    return output;
  }

  String grade() {
    double avg = average();
    // Simple grading policy (A-F)
    if (avg >= 90) return 'A';
    else if (avg >= 80) return 'B';
    else if (avg >= 70) return 'C';
    else if (avg >= 60) return 'D';
    else if (avg >= 50) return 'E';
    else return 'F';
  }

  void displayResult() {
    print('Student: $name');
    print('Scores: mark1=$mark1, mark2=$mark2, mark3=$mark3');
    print('Average: ${average().toStringAsFixed(2)}');
    print('Grade: ${grade()}');
  }
}

void main() {
  // Example usage
  var student = Student(name: 'Alice', mark1: 85, mark2: 78, mark3: 92);
  student.displayResult();
}
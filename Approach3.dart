// Approach 3

class Student {
  String name;
  List<int> marks;

  // Constructor with named parameters, to create an inctance of the class
  Student({
    required this.name, 
    required this.marks
    });

  // Basic function to calculate average (no .reduce)
  double average() {
    // Initially the sum is zero
    int sum = 0;
    // Looping through each item in the list until the list length is reached
    for (int i = 0; i < marks.length; i++) {
      // Keep adding each mark at the reached index to the cummulative sum
      sum += marks[i];
    }
    double avg = sum / marks.length;
    return avg;
  }

  // Determine grade based on average
  String grade() {
    double avg = average();
    if (avg >= 90) return 'A';
    else if (avg >= 80) return 'B';
    else if (avg >= 70) return 'C';
    else if (avg >= 60) return 'D';
    else if (avg >= 50) return 'E';
    else return 'F';
  }

  // Display results
  void displayResult() {
    print('Name: $name');
    // Turn the list into a string for printing as meaningful output.
    print('Marks: ${marks.join(", ")}');
    print('Average: ${average().toStringAsFixed(2)}');
    print('Grade: ${grade()}');
  }
}

void main() {
  var student = Student(name: 'Faith', marks: [88, 92, 79]);
  student.displayResult();
}

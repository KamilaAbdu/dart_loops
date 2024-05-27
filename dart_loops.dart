
import 'dart:io';

void main() {
  firstTask();
  secondTask();
  thirdTask();
  fourthTask();
  fifthTask();
  sixthTask();
  seventhTask();
  eighthTask();
}
void firstTask() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  List<int> result = [];

  for (int element in a) {
    if (b.contains(element) && !result.contains(element)) {
      result.add(element);
    }
  }
  print(result);
}
void secondTask() {
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

  List<int> result = [];

  for (int element in a) {
    if (element % 2 == 0) {
      result.add(element);
    }
  }
  print(result);
}
void thirdTask() {
  int a (String char, String str){
    int count = 0;

    for (int i = 0; i < str.length; i++) {
      if (str[i] == char) {
        count++;
      }
    }
    return count;
  }

  print(a('a', 'dart'));
  print(a('c', 'Chamber of secrets'));
  print(a('b', 'big fat bubble'));
}
void fourthTask() {
  print('Введите начало диапазона:');
  int start = int.parse(stdin.readLineSync()!);

  print('Введите конец диапазона:');
  int end = int.parse(stdin.readLineSync()!);

  int sum = 0;

  for (int i = start; i <= end; i++) {
    sum +=1;
  }
  print('Сумма всех чисел в диапазоне от $start до $end = $sum');
}
void fifthTask() {
  print('Введите год');
  int year = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    if(year %4 == 0){
    print('Этот год вискозный.');
    } else {
    print('Этот год не вискозный.');
    }
}
void sixthTask() {
  print('Введите первое диапазона:');
  int numOne = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  print('Введите второе диапазона:');
  int numTwo = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  int max = numOne > numTwo ? numOne : numTwo;
  int result = 0;

  for(int i = 0; i > 0; i++) {
    if (i % numOne == 0 && i % numTwo == 0) {
      result = i;
      break;
    }
  }
}
void seventhTask() {
  print('Введите число:');
  int number = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  String myString = number.toString();
  int counter = 0;

  for (int i = 0; i < myString.length; i++){
    counter += int.tryParse(myString[i]) ?? 0;
  }
  print(counter);
}
void eighthTask() {
  print('Введите слово или фразу: ');
  String input = stdin.readLineSync() ?? '';
  String reversedString = input.split('').reversed.join();

  if (input == reversedString) {
    print('полидромом');
  } else {
    print('не полидромом');
  }
}
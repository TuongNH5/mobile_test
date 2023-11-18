

void resultArray(List<int> listInt) {
  if (listInt.isEmpty) {
    return;
  }
  // init min and max
  int minVal = listInt[0];
  int maxVal = listInt[0];

  // init list evenElements  and list oddElements
  List<int> evenElements = [];
  List<int> oddElements = [];

  int sum = listInt[0];
  for (int i = 1; i < listInt.length; i++) {
    sum += listInt[i];

    // find min
    if (listInt[i] < minVal) {
      minVal = listInt[i];

    }
    // find max
    if (listInt[i] > maxVal) {
      maxVal = listInt[i];
    }
    // evenElements and oddElements
    if (listInt[i] % 2 == 0) {
      evenElements.add(listInt[i]);
    } else {
      oddElements.add(listInt[i]);
    }
  }

  // Calculate the min and max when sums
  int minSum = sum - maxVal;
  int maxSum = sum - minVal;

  // The results
  print('Min and Max when sums: $minSum $maxSum');
  print('Total: $sum');
  print('Min: $minVal');
  print('Max: $maxVal');
  print('Even elements: $evenElements');
  print('Odd elements: $oddElements');
  print('Min Sum: $minSum');
}

void main() {
  List<int> inputNumbers = [1, 2, 3, 4, 5];
  resultArray(inputNumbers);
}
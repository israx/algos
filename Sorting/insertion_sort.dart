class InsertionSort {
  // Todo
  // 1. Think how to shift items in the array
  // 2. How to split the array into sorted and unsorted
  void insertion(List<int> list) {
    for (int i = 1; i < list.length; i++) {
      var current = list[i];
      var j;

      // 2 1 0 14
      for (j = i - 1; j >= 0 && list[j] > current; j--) {
        list[j + 1] = list[j];
      }

      list[j + 1] = current;
    }
  }
}

void main() {
  List<int> list = [0, 12, -1, -3, 5, 6, 7];
  InsertionSort insertion = InsertionSort();
  print(list);
  insertion.insertion(list);
  print(list);
}

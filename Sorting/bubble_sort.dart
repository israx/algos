class BubbleSort {
  void sort(List<int> list) {
    var isSorted = true;
    for (int i = 0; i < list.length; i++) {
      for (int j = 1; j < list.length - i; j++) {
        if (list[j - 1] > list[j]) {
          swap(list, j - 1, j);
          isSorted = false;
        }
      }
      if (isSorted) return;
    }
  }

  void swap(List<int> list, int index1, int index2) {
    var temp = list[index1];
    list[index1] = list[index2];
    list[index2] = temp;
  }
}

void main() {
  List<int> list = [20, -10, 0, -20, 40];
  BubbleSort sorted = BubbleSort();
  print(list);
  sorted.sort(list);
  print(list);
}

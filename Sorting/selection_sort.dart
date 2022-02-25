class SelectionSort {
  void selectionSort(List<int> list) {
    for (int i = 0; i < list.length; i++) {
      for (int j = i; j < list.length - 1; j++) {
        // 1 2 3 4 5 6 7 8
        if (list[i] > list[j + 1]) {
          _swap(list, i, j + 1);
        }
      }
    }
  }

  void _swap(List<int> list, int a, int b) {
    if (list[a] > list[b]) {
      var temp = list[a];
      list[a] = list[b];
      list[b] = temp;
    }
  }
}

void main() {
  List<int> list = [12, 1, 0, 4, 10];

  SelectionSort sort = SelectionSort();

  sort.selectionSort(list);

  print(list);
}

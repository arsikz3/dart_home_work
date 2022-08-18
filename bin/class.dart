class work2 {
  int num1;
  int num2;

  work2(
    this.num1,
    this.num2,
  );

  int nokFunct() {
    int res;
    res = (num1 * num2 / nodFunct()).toInt();

    return res;
  }

  int nodFunct() {
    var nums1 = <int>{};
    var nums2 = <int>{};
    int nod;

    for (int i = 1; i <= num1; i++) {
      if (num1 % i == 0) {
        nums1.add(i);
      }
    }

    for (int j = 1; j <= num2; j++) {
      if (num2 % j == 0) {
        nums2.add(j);
      }
    }

    for (int i = 0;
        i < nums1.length;
        i++ /*int i = nums1.length; i > 0; i--*/) {
      for (int j = 0;
          j < nums2.length;
          j++ /*int j = nums2.length; j > 0; j--*/) {
        if (nums1.elementAt(i) == nums2.elementAt(j)) {
          nod = nums1.elementAt(i);
        }
        // break;
      }
    }
    return nod;
  }
}

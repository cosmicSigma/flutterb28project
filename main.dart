void main() {
  // (220,284)
  List list = [for(int i=219;i<6369;i++) if (i.isEven) i];
  List listSum = [];
  for (int i=0;i<list.length;i++) {
    int sum = 0;
    for (int j=1;j<list[i];j++) {
      if (list[i]%j==0) sum+=j;
    }
    listSum.add(sum);
    sum=0;
  }

  for (int j=0;j<list.length;j++) {
    if (list.indexOf(listSum[j])!=-1 && listSum[list.indexOf(listSum[j])]==list[j])print("${list[j]}");
  }
}S
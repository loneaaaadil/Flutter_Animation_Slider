import 'dart:math';
import 'dart:ui';

T anyOf<T>(Iterable<T> iterable){
  final index=randomInt(iterable.length)% iterable.length;
  return iterable.elementAt(index);
}

randomInt(int maximum ,{int minimum=0}) {
  return max(minimum, Random.secure().nextInt(maximum));
}
Color randomColor({int opacity=255}){
  return Color.fromARGB(opacity, randomInt(256), randomInt(256), randomInt(256));
}
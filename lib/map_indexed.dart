extension MapIndexedExtension<E> on List<E> {
    Iterable<R> mapIndexed<R>(R Function(int index, E element) convert) sync* {
    var index = 0;
    for (var element in this) {
      yield convert(index++, element);
    }
  }
}
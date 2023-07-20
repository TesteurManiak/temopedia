extension IterableExtensions<T> on Iterable<T> {
  Iterable<T> separatedBy(T separator) sync* {
    for (int i = 0; i < length; i++) {
      yield elementAt(i);
      if (i != length - 1) {
        yield separator;
      }
    }
  }
}

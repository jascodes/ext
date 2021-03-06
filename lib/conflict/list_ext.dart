export 'package:list_ext/src/interable_extensions.dart';
// export 'package:list_ext/src/list_extensions.dart';

import 'dart:math';

/// Extension methods for any [List].
extension ListExtListExtensions<E> on List<E> {
  // Common

  // Common - Get

  /// Returns a random element from the list.
  ///
  /// Throws a [StateError] if `this` is empty.
  E get random {
    if (isEmpty) {
      throw StateError('No element');
    }

    final rnd = Random();
    return this[rnd.nextInt(length)];
  }

  // Transformation

  // Transformation - List

  /// Copy current list with adding [element] at the end of new list.
  ///
  /// If current list is `null` - new list with [element] will be created.
  List<E> copyWith(E element) =>
      this == null ? [element] : (List.from(this)..add(element));

  /// Copy current list with adding all [elements] at the end of new list.
  ///
  /// If current list is `null` - copy of list [elements] will be created.
  List<E> copyWithAll(List<E> elements) =>
      this == null ? List.from(elements) : (List.from(this)..addAll(elements));

  /// Sorts the list in ascending order of the object's field value.
  void sortBy(Comparable Function(E e) getVal) =>
      sort((a, b) => getVal(a).compareTo(getVal(b)));

  /// Sorts the list in descending order of the object's field value.
  void sortByDescending(Comparable Function(E e) getVal) =>
      sort((a, b) => getVal(b).compareTo(getVal(a)));
}

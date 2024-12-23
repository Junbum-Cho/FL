import 'package:collection/collection.dart';

enum Role {
  faculty,
  student,
  studentAuthor,
  administrator,
}

enum PersonId {
  id,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Role):
      return Role.values.deserialize(value) as T?;
    case (PersonId):
      return PersonId.values.deserialize(value) as T?;
    default:
      return null;
  }
}

import 'package:HowILived/core/failuires.dart';
import 'package:HowILived/core/value_objects.dart';
import 'package:HowILived/core/value_validators.dart';
import 'package:dartz/dartz.dart';

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}

import 'package:HowILived/domain/auth/email_address.dart';
import 'package:HowILived/domain/auth/value_objects.dart';
import 'package:meta/meta.dart';

abstract class IAuthFacade {
  Future<void> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<void> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<void> signInWithGoogle();
}

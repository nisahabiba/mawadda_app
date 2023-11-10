import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({
    required this.message,
  });

  final String message;

  @override
  List<Object> get props => [message];

  @override
  bool get stringify => true;
}

//* RemoteFailure
class RemoteFailure extends Failure {
  const RemoteFailure({
    required super.message,
  });
}

//* NoInternetFailure
class NoInternetFailure extends Failure {
  const NoInternetFailure()
      : super(
          message: 'No connection!',
        );
}

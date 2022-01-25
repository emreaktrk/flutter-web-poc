abstract class UseCase {}

abstract class Input<I, O> {
  Future<O> invoke(I input);
}

abstract class NoInput<O> {
  Future<O> invoke();
}

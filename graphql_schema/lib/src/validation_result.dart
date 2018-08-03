part of graphql_schema.src.schema;

class ValidationResult<T> {
  final bool successful;
  final T value;
  final List<String> errors;

  ValidationResult._(this.successful, this.value, this.errors);

  ValidationResult._ok(this.value)
      : errors = [],
        successful = true;

  ValidationResult._failure(this.errors)
      : value = null,
        successful = false;

  ValidationResult<T> _asFailure() {
    return new ValidationResult<T>._(false, value, errors);
  }
}
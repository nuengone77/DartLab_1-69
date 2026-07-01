void main() {
  String? middleName;
  String city = 'Nakhon Sawan';

  int middleNameLength = middleName?.length ?? 0;
  print('Middle name length: ${middleNameLength}');

  int cityLength = city.length;
  print('City length: ${cityLength}');

  print('Middle name before assignment: ${middleName}');

  middleName ??= 'N/A';
  print('Middle name after assignment: ${middleName}');

  middleName ??= 'Something Else';
  print('Middle name after second assignment: ${middleName}');
}

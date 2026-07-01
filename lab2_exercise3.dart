void main() {
  List<String> subjects = ['Network', 'Mobile Application', 'Game Development'];
  print('Number of subjects: ${subjects.length}');
  print('First subject: ${subjects[0]}');
  print('Last subject: ${subjects[subjects.length - 1]}');
  subjects.add('Machine Learning');
  print('Updated subjects: ${subjects}');

  print('---');

  Map<String, int> studentScores = {'Network': 49, 'Mobile Application': 68};

  print('Score for Network: ${studentScores['Network']}');
  studentScores['Game Development'] = 89;
  print('Updated scores: ${studentScores}');

  for (var i in studentScores.keys) {
    if (i.contains('a')) {
      print('All subjects in map: ${i}');
    }
  }

  for (var i in studentScores.keys) {
    if (studentScores[i]! > 50) {
      print('ALL scores in map: ${studentScores[i]}');
    }
  }
}

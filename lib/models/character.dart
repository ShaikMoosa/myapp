import 'package:myapp/models/skill.dart';
import 'package:myapp/models/stats.dart';
import 'package:myapp/models/vocation.dart';

class Character with Stats {
  //constructor
  Character({
    required this.name,
    required this.slogan,
    required this.vocation,
    required this.id,
  });
  //feilds
  final Set<Skill> skills = {};
  final Vocation vocation;
  final String name;
  final String slogan;
  final String id;
  bool _isFav = false;

  //getter
  bool get isFav => _isFav;

  //method
  void toggleIsFav() {
    _isFav = !_isFav;
  }

  void updateSkill(Skill skill) {
    skills.clear();
    skills.add(skill);
  }
}

//Dummy character data
List<Character> characters = [
  Character(id: '1', name: 'Klara', vocation: Vocation.wizard, slogan: 'Kapumf!'),
  Character(id: '2', name: 'Jonny', vocation: Vocation.junkie, slogan: 'Light me up...'),
  Character(id: '3', name: 'Crimson', vocation: Vocation.raider, slogan: 'Fire in the hole!'),
  Character(id: '4', name: 'Shaun', vocation: Vocation.ninja, slogan: 'Alright then gang.'),
];

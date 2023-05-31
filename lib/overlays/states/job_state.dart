import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class JobState {
  String key;
  String icon;
  String image;
  String text1;
  String text2;
  int time;
  JobState({
    required this.key,
    required this.icon,
    required this.image,
    required this.text1,
    required this.text2,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'icon': icon,
      'image': image,
      'text1': text1,
      'text2': text2,
      'time': time,
    };
  }

  factory JobState.fromMap(Map<String, dynamic> map) {
    return JobState(
      key: map['key'] as String,
      icon: map['icon'] as String,
      image: map['image'] as String,
      text1: map['text1'] as String,
      text2: map['text2'] as String,
      time: map['time'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory JobState.fromJson(String source) =>
      JobState.fromMap(json.decode(source) as Map<String, dynamic>);
}

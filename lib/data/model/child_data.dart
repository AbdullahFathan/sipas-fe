class Child {
  String name;
  String birthDate;
  String gender;
  String birthCondition;
  String weightChild;
  String longChild;
  String headCircuChild;

  Child({
    required this.name,
    required this.birthDate,
    required this.gender,
    required this.birthCondition,
    required this.weightChild,
    required this.longChild,
    required this.headCircuChild,
  });

  // Factory constructor to create a Child object from a JSON map
  factory Child.fromJson(Map<String, dynamic> json) {
    return Child(
      name: json['name'],
      birthDate: json['birthDate'],
      gender: json['gender'],
      birthCondition: json['birthCondition'],
      weightChild: json['weightChild'],
      longChild: json['longChild'],
      headCircuChild: json['headCircuChild'],
    );
  }

  // Convert the Child object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'birthDate': birthDate,
      'gender': gender,
      'birthCondition': birthCondition,
      'weightChild': weightChild,
      'longChild': longChild,
      'headCircuChild': headCircuChild,
    };
  }
}

List<Child> userChidlData = [];

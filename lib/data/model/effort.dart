class Effort {
  final int day;
  final int hours;

  Effort(this.day, this.hours);

  factory Effort.fromJson(Map<String, dynamic> json) {
    return Effort(
      json['day'],
      json['hours'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['day'] = day;
    data['hours'] = hours;
    return data;
  }

  @override
  String toString() {
    return 'Effort{day: $day, hours: $hours}';
  }
}

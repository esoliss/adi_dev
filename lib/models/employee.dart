class Employee {
  final String id;
  final String name;
  final List<LineItem> hours;
  Employee({required this.id, required this.hours, required this.name});
}

class LineItem {
  final DateTime date;
  LineItem(this.date);
}

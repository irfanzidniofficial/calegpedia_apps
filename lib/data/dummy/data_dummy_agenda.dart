class Employee {
  Employee(this.date, this.checkIn, this.checkOut, this.hours);
  final String date;
  final String checkIn;
  final String checkOut;
  final String hours;
}

List<Employee> getEmployeeData() {
  return [
    Employee("Kamis, 10", '09:12am', '06:12pm', "08j 10m"),
    Employee("Jum'at, 10", '10:12am', '07:12pm', "08j 10m"),
    Employee("Senin, 12", '11:12am', '06:12pm', "08j 10m"),
    Employee("Selasa, 15", '09:12am', '08:12pm', "08j 10m"),
    Employee("Rabu, 13", '11:12am', '09:12pm', "08j 10m"),
  ];
}

class Employee{
  String? name;

  double calculateSalary(){
    return 0;

  }
}

class FullTimeEmployee extends Employee{
  int? dayWork;
  double? amountRate;

  @override
  double calculateSalary(){
    return (dayWork?? 0) * (amountRate?? 0);
  }
}

class PartTimeEmployee extends Employee{
  double? hourRate;
  int? hoursworked;

  @override
  double calculateSalary(){ 
    return (hourRate?? 0) * (hoursworked?? 0);
  }
}

void main(){
  var emp1 = FullTimeEmployee();
  emp1.name = 'nanthit';
  emp1.dayWork = 5;
  emp1.amountRate = 300;

  var emp2 = PartTimeEmployee();
  emp2.name = 'meaw';
  emp2.hourRate = 40;
  emp2.hoursworked = 8;

  List<Employee> employees = [emp1,emp2];

  print('-----เงินเดือนพนักงานแต่ละคน-----');
  for (var emp in employees){
    print('ชือพนักงาน: ${emp.name} | ได้เงิน: ${emp.calculateSalary()} บาท');
  }
}
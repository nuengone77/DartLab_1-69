class Temperature{
  double _celsius = 0;

  double get celsius => _celsius;

  set celsius(double cel){
    if (cel < -273.15){
      print('error');
    } else{
      _celsius = cel;
    }
  }

  double get fahrenheit => (_celsius * 9/5) + 32;

}

void main(){
  var temp = Temperature();
  temp.celsius = 25;
  print('celsius: ${temp.celsius}');
  print('fahrenheit: ${temp.fahrenheit}');
}
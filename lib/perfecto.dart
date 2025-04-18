class Perfecto {
  int numero;

  Perfecto( this.numero );

  bool esPerfecto(){
    int suma = 0, divisor;
    for( divisor = 1; divisor < numero ; divisor++ ){
      if( numero % divisor == 0 ){
        suma = suma + divisor;
      }
    }
    return suma == numero;
  }
}
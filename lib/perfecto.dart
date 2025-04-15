class Perfecto {
  int n;

  Perfecto(this.n);

  bool esPerfecto(){
    int s=0, d;
    for(d=1; d< n; d++){
      if(n%d==0){
        s=s+d;
      }
    }
    return s==n;
  }
}
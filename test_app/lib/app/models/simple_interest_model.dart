class SimpleInterest{
  double p;
  double t;
  double r;
  SimpleInterest({
    required this.p,
    required this.t,
    required this.r
});
  double si(){
    return (p*t*r)/100;
  }
}
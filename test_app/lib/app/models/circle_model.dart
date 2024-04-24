class CircleModel{
  double radius;
  double pi = (22/7);
  CircleModel({
    required this.radius,
});
  double area(){
    return(pi*radius*radius);
  }

}
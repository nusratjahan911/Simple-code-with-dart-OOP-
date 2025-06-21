
abstract class vehicle{
  int? _speed;

  void move(){}

  void setSpeed(int speed){
    _speed = speed;
  }
  int? get speed => _speed;
}

class car extends vehicle{
  @override
  void move(){
    print("The car is moving at ${_speed} km/h..");
  }
}
void main(){
  car Acura = car();
  Acura.setSpeed(100);
  Acura.move();
}

Car myCar;
DriveSystem drive;
Oval o;

void setup(){
  size(1000,800);
  o = new Oval(900,700,3);
  myCar=new Car(width/2, 100, PI/2+.1);
  drive=new MyDriveSystem(myCar);
  //drive=new DriveSystem(myCar);
}

void draw(){
  background(0);
  // Draw obstacles before the car so that the sensors can work correctly.
  //drawPath();
  o.show();
  myCar.show();
  drive.drive();
  myCar.move();
}

void drawPath(){
  strokeWeight(7);
  stroke(255);
  line(50,50,width-80,50);
  line(width-80,50,width-80,height-60);
  line(width-80,height-60, 50,height-60);
  line(50,height-60, 50,50);
  //line(300,0,300,height);
  strokeWeight(0);
}

int x = 400;
int y = 400;
int xSpeed = 2;

void setup(){
  size(800, 800);
  background(255, 255, 255);
}

void draw(){
background(255, 255, 255);
ellipse(x, y, 50, 50); //in draw method
fill(#AAAAAA); //in draw method
stroke(#AAAAAA);
x += xSpeed;
if(x > 800){
    xSpeed = -xSpeed;
} else if ( x < 0){
    xSpeed = -xSpeed;
}
}

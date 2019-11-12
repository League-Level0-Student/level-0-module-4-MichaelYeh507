PImage donkey;
PImage tail;
void setup() {
donkey= loadImage("donkey.jpg");      //change the file name if you need to
tail = loadImage("tail.png");
size (550, 406);
}

void draw() {
System.out.println(mouseX );
background(donkey);
rect(0, 0, 30, 30);
rect(454, 75, 40, 40);
image(tail, mouseX, mouseY);
tail.resize(100, 100);
if ((mouseX >= 0 && mouseX <= 30) && (mouseY >= 0 && mouseY <= 30)) {
    background(donkey);
    image(tail, mouseX, mouseY);
} else if ((mouseX >= 420 && mouseX <= 464) && (mouseY >= 67 && mouseY <= 93)) {
    background(donkey);
    image(tail, mouseX, mouseY);
} else {
    background(0, 0, 0, 0);
    image(tail, mouseX, mouseY);
}

if(mousePressed == true){
    image(tail, mouseX, mouseY);
}
}

PImage donkey;
PImage tail;
int isStuckX;
int isStuckY;
boolean isPressed = false;


void setup() {
    donkey= loadImage("donkey.jpg");      //change the file name if you need to
    tail = loadImage("tail.png");
    size (550, 406);
    tail.resize(100, 100);
    background(donkey);
}

void draw() {
    if (!isPressed){
        if ((mouseX >= 0 && mouseX <= 30) && (mouseY >= 0 && mouseY <= 30) ) {
            background(donkey);
            image(tail, mouseX, mouseY);
        } else if ((mouseX >= 420 && mouseX <= 464) && (mouseY >= 67 && mouseY <= 93)  ) {
            background(donkey);
            image(tail, mouseX, mouseY);
        } else {
            background(0, 0, 0, 0);
            image(tail, mouseX, mouseY);
        }
    } else {
        background(donkey);
        image(tail, isStuckX, isStuckY);        
    }

    if(mousePressed){
        isStuckX = mouseX;
        isStuckY = mouseY;
        isPressed = true;
    }
}

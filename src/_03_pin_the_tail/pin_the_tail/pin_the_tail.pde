PImage donkey;
PImage tail;
int isStuckX;
int isStuckY;
boolean isPressed = false;
import ddf.minim.*;          //at the very top of your sketch
AudioSample woohooSound;          //at the top of your sketch
boolean playSound = true;          //at the top of your sketch

void setup() {
    donkey= loadImage("donkey.jpg");      //change the file name if you need to
    tail = loadImage("tail.png");
    size (550, 406);
    tail.resize(100, 100);
    background(donkey);
    Minim minim = new Minim(this);     //In the setup method
    woohooSound = minim.loadSample("homer-woohoo.wav");     //In setup. Change the file name if you need to
}

void draw() {
    if (!isPressed){
        if ((mouseX >= 0 && mouseX <= 30) && (mouseY >= 0 && mouseY <= 30) ) {
            background(donkey);
            image(tail, mouseX, mouseY);
        } else if ((mouseX >= 420 && mouseX <= 464) && (mouseY >= 67 && mouseY <= 93)  ) {
            //background(donkey);
            image(tail, mouseX, mouseY);
              // put these lines where you want the sound to play
            if (playSound) {
            woohooSound.trigger();
            playSound = false;
            }
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

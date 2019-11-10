
void setup() {
    PImage face = loadImage("free-download-googly-eyes-cartoon-clip-art-cartoon-pictures-of-googly-eye-png-260_260.jpg");
    size(800, 800);
    face.resize(width, height);
    background(face);

}

int currentLeftPosX = 210;
int currentRightPosX = 585;
int currentLeftPosY = 400;
int currentRightPosY = 400;
int leftEyeCordX = 210;
int leftEyeCordY = 400;
int rightEyeCordX = 578;
int rightEyeCordY = 400;
int leftEyeSize = 305;
int rightEyeSize = 305;
int leftPupilSize = 75;
int rightPupilSize = 75;
int leftBoundary;
int leftBoundary2;
int leftTopBoundary;
int leftBottomBoundary;
int rightTopBoundary;
int rightBottomBoundary;
int rightBoundary;
int rightBoundary2;

void draw() {
    //left eye
    fill(#FFFFFF);
    ellipse(leftEyeCordX, leftEyeCordY, leftEyeSize, leftEyeSize);
    fill(#000000);
    ellipse(currentLeftPosX, currentLeftPosY, 75, 75);
    
    //horizontal movement
    leftBoundary = leftEyeCordX - (leftEyeSize/2) + (leftPupilSize/2) + 25;
    leftBoundary2 = leftEyeCordX + (leftEyeSize/2) - (leftPupilSize/2) - 25;
    if (mouseX < currentLeftPosX && currentLeftPosX >= leftBoundary) {
            currentLeftPosX -= 1;
    } else if (mouseX > currentLeftPosX && currentLeftPosX <= leftBoundary2) {
            currentLeftPosX += 1;    
    }
    
    //vertical movement
    leftTopBoundary = leftEyeCordY - (leftEyeSize/2) + (leftPupilSize/2) + 25;
    leftBottomBoundary = leftEyeCordY + (leftEyeSize/2) - (leftPupilSize/2) - 25;
    if (mouseY < currentLeftPosY && currentLeftPosY >= leftTopBoundary) {
            currentLeftPosY -= 1;
    } else if (mouseY > currentLeftPosY && currentLeftPosY <= leftBottomBoundary) {
            currentLeftPosY += 1;    
    }
    
    //right eye

    fill(#FFFFFF);
    ellipse(rightEyeCordX, rightEyeCordY, rightEyeSize, rightEyeSize);
    fill(#000000);
    ellipse(currentRightPosX, currentRightPosY, 75, 75);
    
    //horizontal movement
    rightBoundary = rightEyeCordX - (rightEyeSize/2) + (rightPupilSize/2) +40;
    rightBoundary2 = rightEyeCordX + (rightEyeSize/2) - (rightPupilSize/2) - 40;
    if (mouseX < currentRightPosX && currentRightPosX >= rightBoundary) {
        currentRightPosX -= 1;
    } else if (mouseX > currentRightPosX && currentRightPosX <= rightBoundary2) {
        currentRightPosX += 1;    
    }
    
    //vertical movement
    rightTopBoundary = rightEyeCordY - (rightEyeSize/2) + (rightPupilSize/2) + 20;
    rightBottomBoundary = rightEyeCordY + (rightEyeSize/2) - (rightPupilSize/2) - 20;
    if (mouseY < currentRightPosY && currentRightPosY >= rightTopBoundary) {
            currentRightPosY -= 1;
    } else if (mouseY > currentRightPosY && currentRightPosY <= rightBottomBoundary) {
            currentRightPosY += 1;    
    }

}

width = 400;
height = 400;

noStroke();

var faceSize = 176;
var mouthSize = 1/2 * faceSize;
var eyeSize = 2/15 * faceSize;
var x = 200;
var y = 303;
var ascend;

var slide=30;

draw = function() {
    background(245, 237, 237);
    
    textFont(createFont("sans-serif"));
    if (slide % 3) {
        fill(78, 19, 207);
    }
    textSize(30);
    text("STUFFED WINSTON!", 40, 73);

    textFont(createFont("monospace"),15);
    fill(179, 75, 122);
    text("SO SOFT! DON'T GO TO SLEEP WITHOUT ONE!", slide, 138);     
    slide--;
    if (slide === -350) {
        slide = 400;
    }
    
    // Winstone {
    // face
    fill(255, 255, 0);
    ellipse(x, y, faceSize, faceSize);

    // eyes
    fill(46, 46, 41);
    ellipse(x - 1/6 * faceSize, y - 1/6 * faceSize, eyeSize, eyeSize);
    ellipse(x + 1/3 * faceSize, y - 1/5 * faceSize, eyeSize, eyeSize);
    
    // mouth
    fill(252, 65, 65);
    ellipse(x + 1/6 * faceSize, y + 2/15 * faceSize, mouthSize, mouthSize);
    
    if (mouthSize < 1/4*faceSize) {
        ascend = true;
        //mouthSize++;
    } 
    if (mouthSize > 1/3*faceSize) {
        ascend = false;
        //mouthSize--;
    }
    if (ascend) {
        mouthSize++;
    } else {
        mouthSize--;
    }
      //} Winstone
};


width = 400;
height = 400;

var bodyX = 200;
var bodyY = 200;
var bodyW = 236;
var bodyH = bodyW/2;
var faceSize = 2/5 * bodyW;
var faceX = bodyX + 1/2*bodyW;
var faceY = bodyY-1/4*bodyW;
var eyeSize = 1/5 * faceSize;

draw = function() {
    background(240, 237, 221);
    strokeWeight(1);
    stroke(0, 0, 0);
    fill(240, 209, 36);
    ellipse(bodyX, bodyY, bodyW, bodyH); // body?
    ellipse(faceX, faceY, faceSize, faceSize); // face?
    
    // eyes
    fill(245, 246, 250);
    ellipse(faceX - 1/6*faceSize, faceY - 1/7*faceSize, eyeSize, eyeSize);
    ellipse(faceX + 1/6*faceSize, faceY - 1/7*faceSize, eyeSize, eyeSize);
    fill(32, 71, 227);
    ellipse(faceX - 1/6*faceSize, faceY - 1/7*faceSize, eyeSize/4, eyeSize);
    ellipse(faceX + 1/6*faceSize, faceY - 1/7*faceSize, eyeSize/4, eyeSize);
    
    // ears
    //strokeWeight(5);       // { ищем 
    //stroke(209, 35, 70);    //точки
    //point(faceX - faceSize/3, faceY - faceSize/3);    //для
    //point(faceX - faceSize/5, faceY - faceSize*3/7);                        //ушей
    //point(faceX - faceSize*0.35, faceY - faceSize*1/2); 
    fill(240, 209, 36);//}
    triangle(faceX - faceSize/3, faceY - faceSize/3, faceX - faceSize/5, faceY - faceSize*3/7, faceX - faceSize*0.35, faceY - faceSize*1/2);
    triangle(faceX + faceSize/3, faceY - faceSize/3, faceX + faceSize/5, faceY - faceSize*3/7, faceX + faceSize*0.35, faceY - faceSize*1/2);
    
    // nose и усы
    strokeWeight(10);
    stroke(0, 0, 0);
    point(faceX, faceY + faceSize*1/10);
    strokeWeight(1);
    line(faceX, faceY+faceSize*1/10, faceX - faceSize*2/3, faceY - faceSize*1/10);
    line(faceX, faceY+faceSize*1/10, faceX - faceSize*2/3, faceY + faceSize*1/10);
    line(faceX, faceY+faceSize*1/10, faceX - faceSize*2/3, faceY + faceSize*3/10);
    line(faceX, faceY+faceSize*1/10, faceX + faceSize*2/3, faceY - faceSize*1/10);
    line(faceX, faceY+faceSize*1/10, faceX + faceSize*2/3, faceY + faceSize*1/10);
    line(faceX, faceY+faceSize*1/10, faceX + faceSize*2/3, faceY + faceSize*3/10);
    
    // анимация глаз
    if(eyeSize < 1/3*faceSize) {
        eyeSize++;
    } else {
        eyeSize = 1/5 * faceSize;
    }
};

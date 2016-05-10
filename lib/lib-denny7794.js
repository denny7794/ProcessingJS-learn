// БИБЛИОТЕКА

// Winstone
var drawWinstone = function(x, y, faceSize){
    var mouthSize = 1/2 * faceSize;
    var eyeSize = 2/15 * faceSize;
    
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
};
//----------------------------------------------------------
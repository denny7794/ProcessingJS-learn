width = 500;
height = 500;

var i;

// существо
var personaX = random(0,500);
var personaY = random(0,500);
var personaRadar = 100;

// инициализация полезных частиц
var goodThingsX = [];
var goodThingsY = [];
for(var i=0;i<10;i++){
    goodThingsX[i] = random(0,500);
    goodThingsY[i] = random(0,500);
}





draw = function() {
    background(161, 218, 237);
    
    // отрисовка существа
    strokeWeight(10);
    stroke(20,245,143);
    point(personaX, personaY);
    
    // отрисовка полезных частиц
    strokeWeight(6);
    stroke(245, 226, 20);
    for(i=0;i<10;i++){
        point(goodThingsX[i], goodThingsY[i]);
    }
    
    // проверка
    for(i=0;i<10;i++){
    }
}


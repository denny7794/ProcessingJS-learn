width = 400;
height = 400;

background(186, 145, 20); // wooden table
ellipse(200, 200, 350, 350); // plate
ellipse(200, 200, 300, 300); 

// Сосиски
strokeWeight(30);
stroke(255, 153, 0);
arc(170, 200, 200, 200, 122, 217);
arc(210, 200, 200, 200, 122, 217);

// Кетчуп
noStroke();
fill(255, 0, 0);
ellipse(random(190,200), random(90,110), random(50,70), random(50,70));
ellipse(random(210,230), random(100,120), random(50,70), random(50,70));
//ellipse(204, 99, 66, 66);
//ellipse(220, 109, 51, 66);

// Картошка
stroke(15, 14, 14);
strokeWeight(1);
fill(255, 242, 0);
for(var i=0;i<17;i++){
    var krugl=random(40,60);
    ellipse(random(200,300), random(170,300), krugl, krugl);
}
//ellipse(250, 300, 50, 50);
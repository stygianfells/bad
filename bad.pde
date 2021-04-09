
//oh ho! so it commences
//-------------------
//i am once again very sorry that this project is late
//i blame the last one
//and for that one being late
//i blame...the minecraft soundtrack which i listened to while making it
//in my defense it is budget therapy
//also about the "heheheheheh"s that appeared after every 420 in that program...
//i must have uhhhh forgotten to spawn-proof my code from the...immaturity demons
//dont worry about it...its...a coincidence haha
//-------------------
//anyways welcome to the drawing program
//when you mouse over the indicator it's supposed to be tactile but for some reason
//the shadow sometimes takes a second to show up
//but when you do so it gives you the hex code and arbitrary name of your selected colour
//so that's pretty neat i guess


//the pawns
color theStage = #3E3E3D;
color dreamstill = #33A1AD;
color warren = #D8822C;
color masked = #E0CE44;
color dock = #EAEAEA;
color spleen = #CE5745;
color stitches = #70CED1;

//ummmmm
int stroke, indiecounter;
color thechosenone;
float sliderpos;
float thiccness;

void setup() {
  size (1400, 800);
  background(theStage);
  sliderpos = 500;
  stroke = 0;
  indiecounter = 0;
  thechosenone = dock;
  thiccness = 0;
}

void draw() {
  //menu bar
  fill(200);
  noStroke();
  rect(0, 20, 100, 760);

  buttonses();
  indiegatoruwu();
}

//buttons!!!11!111!!1!!
void buttonses() {
  colourses();
  stickerses();
  strokeWeight(10);
  stroke(theStage);
  slideyslide();
  useemenot();

  noStroke();
  refreshment();
  grace();
}

//colours
void colourses() {
  fill(dreamstill);
  noStroke();
  rect(20, 120, 60, 50);

  fill(stitches);
  noStroke();
  rect(20, 170, 60, 50);

  fill(dock);
  noStroke();
  rect(20, 220, 60, 50);

  fill(masked);
  noStroke();
  rect(20, 270, 60, 50);

  fill(warren);
  noStroke();
  rect(20, 320, 60, 50);

  fill(spleen);
  noStroke();
  rect(20, 370, 60, 50);

  tactilecolour(20, 80, 120, 170);
  tactilecolour(20, 80, 170, 220);
  tactilecolour(20, 80, 220, 270);
  tactilecolour(20, 80, 270, 320);
  tactilecolour(20, 80, 320, 370);
  tactilecolour(20, 80, 370, 420);

  noFill();
  strokeWeight(5);
  stroke(theStage);
  if (thechosenone == dreamstill) {
    rect(20, 120, 60, 50);
  }
  if (thechosenone == stitches) {
    rect(20, 170, 60, 50);
  }
  if (thechosenone == dock) {
    rect(20, 220, 60, 50);
  }
  if (thechosenone == masked) {
    rect(20, 270, 60, 50);
  }
  if (thechosenone == warren) {
    rect(20, 320, 60, 50);
  }
  if (thechosenone == spleen) {
    rect(20, 370, 60, 50);
  }
}

void tactilecolour(int x1, int x2, int y1, int y2) {
  if (mouseX > x1 && mouseX < x2 && mouseY > y1 && mouseY < y2) {
    noFill();
    strokeWeight(5);
    stroke(255);
    rect(x1, y1, 60, 50);
  }
}

void mouseReleased() {
  if (mouseX > 20 && mouseX < 80 && mouseY > 120 && mouseY < 170) {
    thechosenone = dreamstill;
  } else if (mouseX > 20 && mouseX < 80 && mouseY > 170 && mouseY < 220) {
    thechosenone = stitches;
  } else if (mouseX > 20 && mouseX < 80 && mouseY > 220 && mouseY < 270) {
    thechosenone = dock;
  } else if (mouseX > 20 && mouseX < 80 && mouseY > 270 && mouseY < 320) {
    thechosenone = masked;
  } else if (mouseX > 20 && mouseX < 80 && mouseY > 320 && mouseY < 370) {
    thechosenone = warren;
  } else if (mouseX > 20 && mouseX < 80 && mouseY > 370 && mouseY < 420) {
    thechosenone = spleen;
  } else if (mouseX > 120 && mouseX < 170 && mouseY > 100 && mouseY < 160) {
    thechosenone = theStage;
  }

  sliderboopitybop();
}

//sticker
void stickerses() {
  fill(200);
  noStroke();
  rect(120, 20, 50, 60);

  tactilerandomrect(120, 170, 20, 80);
}

//eraser
void useemenot() {
  fill(200);
  noStroke();
  rect(120, 100, 50, 60);
  tactilerandomrect(120, 170, 100, 160);
}

void tactilerandomrect(int x1, int x2, int y1, int y2) {
  if (mouseX > x1 && mouseX < x2 && mouseY > y1 && mouseY < y2) {
    fill(120);
    rect(x1+45, y1, 5, 60);
    rect(x1, y1+55, 50, 5);
  }
}

//slider
void slideyslide() {
  line(50, 460, 50, 640);
  strokeWeight(7);
  fill(200);
  circle(50, sliderpos, 20);
  if (mouseY > 460 && mouseY < 640 && mouseX > 35 && mouseX < 65) {
    fill(255); 
    circle(50, sliderpos, 23);
  }
}

void sliderboopitybop() {
  if (mouseY > 460 && mouseY < 640 && mouseX > 35 && mouseX < 65) {
    sliderpos = mouseY;
  }
  thiccness = map(sliderpos, 460, 640, 5, 30);
}

void mouseDragged() {
  sliderboopitybop();

  if (mouseX > 100) {
    strokeWeight(thiccness);
    stroke(thechosenone);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}

//new
void refreshment() {
  tactilesmall(20, 80, 680, 710);
  fill(theStage);
  rect(20, 680, 60, 30);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(12);
  text("NEW", 50, 693);
}

//save
void grace() {
  tactilesmall(20, 80, 730, 760);
  fill(theStage);
  rect(20, 730, 60, 30);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(12);
  text("SAVE", 50, 743);
}

void tactilesmall(int x1, int x2, int y1, int y2) {
  if (mouseX > x1 && mouseX < x2 && mouseY > y1 && mouseY < y2) {
    fill(theStage, 120);
    rect(x1+5, y1+5, 60, 30);
  }
}

//indicator
void indiegatoruwu() {
  if (dist(mouseX, mouseY, 50, 70) < 30) {
    fill(theStage, 120);
    ellipse(50, 70, 65, 65);
  }

  fill(theStage);
  ellipse(50, 70, 60, 60);
  fill(thechosenone);
  ellipse(50, 70, thiccness, thiccness);

  if (dist(mouseX, mouseY, 50, 70)<30) {
    textAlign(CENTER, CENTER);
    textSize(10);

    if (thechosenone == dreamstill) {
      fill(theStage);
      rect(700, 740, 100, 60);
      fill(255);
      text("dreamstill #33A1AD", 750, 770);
    }
    if (thechosenone == stitches) {
      fill(theStage);
      rect(700, 740, 100, 60);
      fill(255);
      text("stitches #70CED1", 750, 770);
    }
    if (thechosenone == dock) {
      fill(theStage);
      rect(700, 740, 100, 60);
      fill(255);
      text("dock #EAEAEA", 750, 770);
    }
    if (thechosenone == masked) {
      fill(theStage);
      rect(700, 740, 100, 60);
      fill(255);
      text("masked #EOCE44", 750, 770);
    }
    if (thechosenone == warren) {
      fill(theStage);
      rect(700, 740, 100, 60);
      fill(255);
      text("warren #D8822C", 750, 770);
    }
    if (thechosenone == spleen) {
      fill(theStage);
      rect(700, 740, 100, 60);
      fill(255);
      text("spleen #CE5745", 750, 770);
    }
  } else {
    fill(theStage);
    rect(700, 740, 100, 60);
  }
}

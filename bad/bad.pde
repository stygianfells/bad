
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
//featured features: six vibrant colours! fully adjustable
//if u mouse over the indicator it gives u the hex code of the colour
//theres an eraser and a sticker button
//new and save options, fully tactile
//disclaimer: smoother experience with trackpad
//(read: please don't expose my stupid bugs ahhahahaha)


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
PImage thing;
boolean stampison;

void setup() {
  size (1400, 800);
  background(theStage);
  sliderpos = 600;
  stroke = 0;
  indiecounter = 0;
  thechosenone = dock;
  thiccness = 0;
  thing = loadImage("thing.png");
  stampison = false;
}

void draw() {
  //menu bar
  fill(200);
  noStroke();
  rect(0, 20, 100, 760);
  
  indiegatoruwu();
  buttonses();

}

//buttons!!!11!111!!1!!
void buttonses() {
  colourses();
  noStroke();
  refreshment();
  stickerses();
  strokeWeight(10);
  stroke(theStage);
  slideyslide();
  useemenot();

  noStroke();
  grace();
}

//colours
void colourses() {
  //colour buttons
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

  //tactile--tentative outline
  tactilecolour(20, 80, 120, 170);
  tactilecolour(20, 80, 170, 220);
  tactilecolour(20, 80, 220, 270);
  tactilecolour(20, 80, 270, 320);
  tactilecolour(20, 80, 320, 370);
  tactilecolour(20, 80, 370, 420);

  //selection outline
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

//tactile func for colour buttons
void tactilecolour(int x1, int x2, int y1, int y2) {
  if (mouseX > x1 && mouseX < x2 && mouseY > y1 && mouseY < y2) {
    noFill();
    strokeWeight(5);
    stroke(255);
    rect(x1, y1, 60, 50);
  }
}

void mouseReleased() {
  //colour picking
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
  } // erasing

  //click-jump on slider
  sliderboopitybop();
  
  //static dots
  if (stampison == false) {
    if (mouseX > 100 && mouseY > 200) {
      fill(thechosenone);
      noStroke();
      circle(mouseX, mouseY, thiccness);
    } 
  } 
  //potato dots
  if (stampison == true && mouseX > 100 && mouseY > 200) {
    image(thing, mouseX, mouseY, thiccness*3/2, thiccness*3/2);
  }
  //stamp toggle
  if (mouseX > 120 && mouseX < 170 && mouseY > 20 && mouseY < 80) {
    stampison = !stampison;
  }
  //new
  if (mouseX > 20 && mouseX < 80 && mouseY > 680 && mouseY < 710) {
    fill(theStage);
    rect(0, 0, 1400, 800); 
  }
  //save
  if (mouseX > 20 && mouseX < 80 && mouseY > 730 && mouseY < 760) {
    selectOutput("Choose a file name for your masterpiece", "save");
  }
}

//sticker
void stickerses() {
  fill(200);
  noStroke();
  rect(120, 20, 50, 60);
  image(thing, 125, 30, 40, 40);

  //dimming button if on
  if (stampison == false) {
    tactilerandomrect(120, 170, 20, 80);
  } else {
    fill(150, 120);
    rect(120, 20, 50, 60);
  }
}

//eraser
void useemenot() {
  fill(200);
  noStroke();
  rect(120, 100, 50, 60);
  tactilerandomrect(120, 170, 100, 160);

  //couldnt find an eraser png so i drew one lol
  stroke(theStage);
  strokeWeight(3);
  line(135, 115, 135, 145);
  line(135, 115, 155, 115);
  line(155, 140, 150, 145);
  line(155, 115, 155, 140);
  line(135, 145, 150, 145);
  line(135, 130, 155, 130);
  noStroke();
  fill(theStage, 120);
  rect(135, 115, 20, 15);
}

//bigger size tactile func for erase and potato buttons
void tactilerandomrect(int x1, int x2, int y1, int y2) {
  if (mouseX > x1 && mouseX < x2 && mouseY > y1 && mouseY < y2) {
    fill(150, 120);
    rect(x1, y1, 50, 60);
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

//slider doing stuff
void sliderboopitybop() {
  if (mouseY > 460 && mouseY < 640 && mouseX > 35 && mouseX < 65) {
    sliderpos = mouseY;
  }
  thiccness = map(sliderpos, 460, 640, 35, 5);
}

void mouseDragged() {
  //slider moving with mouse
  sliderboopitybop();

  //colours and eraser
  if (stampison == false) {
    if (mouseX > 100) {
      strokeWeight(thiccness);
      stroke(thechosenone);
      line(pmouseX, pmouseY, mouseX, mouseY);
    }
  //otherwise (i.e. potato)
  } else if (stampison == true && mouseX > 100) {
    image(thing, mouseX, mouseY, thiccness*3/2, thiccness*3/2);
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

//save stuff
void save(File f) {
   if (f !=null) {
   PImage canvas = get(170, 1, width-1230, height-800); 
   canvas.save(f.getAbsolutePath());
   }
}

//tactile func for smaller buttons--new and save
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

  //dot in the middle--actual indicator
  fill(theStage);
  ellipse(50, 70, 60, 60);
  fill(thechosenone);
  ellipse(50, 70, thiccness, thiccness);

  //hex code feature
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
  } //no colour selected, erasing previous text
}

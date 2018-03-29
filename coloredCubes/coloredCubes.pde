float[] hue = new float[6];
float[] sat = new float[6];
float[] alpha = new float[6];

PVector[] randomPos = new PVector[50];

void setup(){
  size(500, 500, P3D);
  
  colorMode(HSB, 360, 100, 100, 100);
  blendMode(ADD);
  
  genRandomColor();
  
  for(int i = 0; i < randomPos.length; i++){
    randomPos[i] = new PVector(random(-250, 250), random(-250, 250), random(-180, 200));
  }
  
}

void draw(){
  
  translate(500/2, 500/2);
  
  rotateX(mouseY * 0.25);
  rotateY(mouseX * 0.25);
  background(0);
  
  for(int i = 0; i < randomPos.length; i++){
   square(randomPos[i].x, randomPos[i].y, randomPos[i].z , 50);
  }
}

void mousePressed(){
  genRandomColor();  
}


void square(float centerX, float centerY, float centerZ,float sqWidth){
  
  beginShape();
    fill(hue[0], sat[0], alpha[0]);
    vertex(centerX - sqWidth/2, centerY - sqWidth/2, centerZ + sqWidth/2);
    vertex(centerX + sqWidth/2, centerY - sqWidth/2, centerZ + sqWidth/2);
    vertex(centerX + sqWidth/2, centerY + sqWidth/2, centerZ + sqWidth/2);
    vertex(centerX - sqWidth/2, centerY + sqWidth/2, centerZ + sqWidth/2);
  endShape(CLOSE);
  
  beginShape();
    fill(hue[1], sat[1], alpha[1]);
    vertex(centerX - sqWidth/2, centerY - sqWidth/2, centerZ - sqWidth/2);
    vertex(centerX + sqWidth/2, centerY - sqWidth/2, centerZ - sqWidth/2);
    vertex(centerX + sqWidth/2, centerY + sqWidth/2, centerZ - sqWidth/2);
    vertex(centerX - sqWidth/2, centerY + sqWidth/2, centerZ - sqWidth/2);
  endShape(CLOSE);
  
  beginShape();
    fill(hue[2], sat[2], alpha[2]);
    vertex(centerX - sqWidth/2, centerY - sqWidth/2, centerZ + sqWidth/2);
    vertex(centerX + sqWidth/2, centerY - sqWidth/2, centerZ + sqWidth/2);
    vertex(centerX + sqWidth/2, centerY - sqWidth/2, centerZ - sqWidth/2);
    vertex(centerX - sqWidth/2, centerY - sqWidth/2, centerZ - sqWidth/2);
  endShape(CLOSE);
  
  beginShape();
    fill(hue[3], sat[3], alpha[3]);
    vertex(centerX - sqWidth/2, centerY + sqWidth/2, centerZ + sqWidth/2);
    vertex(centerX + sqWidth/2, centerY + sqWidth/2, centerZ + sqWidth/2);
    vertex(centerX + sqWidth/2, centerY + sqWidth/2, centerZ - sqWidth/2);
    vertex(centerX - sqWidth/2, centerY + sqWidth/2, centerZ - sqWidth/2);
  endShape(CLOSE);
  
  beginShape();
    fill(hue[4], sat[4], alpha[4]);
    vertex(centerX - sqWidth/2, centerY + sqWidth/2, centerZ + sqWidth/2);
    vertex(centerX - sqWidth/2, centerY + sqWidth/2, centerZ - sqWidth/2);
    vertex(centerX - sqWidth/2, centerY - sqWidth/2, centerZ - sqWidth/2);
    vertex(centerX - sqWidth/2, centerY - sqWidth/2, centerZ + sqWidth/2);
  endShape(CLOSE);
  
  beginShape();
    fill(hue[5], sat[5], alpha[5]);
    vertex(centerX + sqWidth/2, centerY + sqWidth/2, centerZ + sqWidth/2);
    vertex(centerX + sqWidth/2, centerY + sqWidth/2, centerZ - sqWidth/2);
    vertex(centerX + sqWidth/2, centerY - sqWidth/2, centerZ - sqWidth/2);
    vertex(centerX + sqWidth/2, centerY - sqWidth/2, centerZ + sqWidth/2);
  endShape(CLOSE);
}

void genRandomColor(){
  
  for (int i = 0; i < 6; i++){
    hue[i] = random(0,360);
    sat[i] = random(60, 75);
    alpha[i] = random(25, 35);
  }
  
}

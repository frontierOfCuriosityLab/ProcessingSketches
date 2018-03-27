PVector[] vertexPoint = new PVector[4];

void setup() {
  size(500, 500, P3D);
  tetra(0, 0, 0, 100, 50);
  
  //HSB color mode tutorial ---> http://p5aholic.hatenablog.com/entry/2015/06/11/010741
  colorMode(HSB, 360, 100, 100, 100);
  blendMode(ADD);
}

void draw() {
  translate(500/2, 500/2);
  background(0);
  
  rotateY(mouseX * 0.125);
  rotateX(mouseY * 0.125);
  
  ambientLight(0, 0, 100, 0, -150, 0);
  
  beginShape();
      fill(360, 80, 40);
      vertex(vertexPoint[0].x, vertexPoint[0].y, vertexPoint[0].z);
      vertex(vertexPoint[1].x, vertexPoint[1].y, vertexPoint[1].z);
      vertex(vertexPoint[2].x, vertexPoint[2].y, vertexPoint[2].z);
  endShape(CLOSE);    
  
  beginShape();
    fill(240, 80, 40);
    vertex(vertexPoint[3].x, vertexPoint[3].y, vertexPoint[3].z);
    vertex(vertexPoint[0].x, vertexPoint[0].y, vertexPoint[0].z);
    vertex(vertexPoint[1].x, vertexPoint[1].y, vertexPoint[1].z);
  endShape(CLOSE);
  
  beginShape();
    fill(120, 80, 40);
    vertex(vertexPoint[3].x, vertexPoint[3].y, vertexPoint[3].z);
    vertex(vertexPoint[1].x, vertexPoint[1].y, vertexPoint[1].z);
    vertex(vertexPoint[2].x, vertexPoint[2].y, vertexPoint[2].z);
  endShape(CLOSE);
  
  beginShape();
    fill(0, 80, 40);
    vertex(vertexPoint[3].x, vertexPoint[3].y, vertexPoint[3].z);
    vertex(vertexPoint[0].x, vertexPoint[0].y, vertexPoint[0].z);
    vertex(vertexPoint[2].x, vertexPoint[2].y, vertexPoint[2].z);
  endShape(CLOSE);
  
}

void tetra(float centerX, float centerY, float centerZ, float radius, float degOffset) {
  for (int i = 0; i < 3; i++) {
    vertexPoint[i] = new PVector(centerX + radius * cos(radians(degOffset + 120 * i)), 
      centerY, 
      centerZ + radius * sin(radians(degOffset + 120 * i))
      );
  }
  float tetraHeight = radius * sqrt(2);
  vertexPoint[3] = new PVector(centerX, centerY - tetraHeight, centerZ);
}

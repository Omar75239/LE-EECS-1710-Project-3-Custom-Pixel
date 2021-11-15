//Thing to know:
//Image will break into hundreds of dots
//Moving the mouse cursor will change the color of the small cubes that are spread out on the screen

PImage mainimage;
ArrayList<Dot> dots;
int scale = 6;
color boxColor = color (255);

void setup() {
  size(800, 600, P2D);
  background(0);
  mainimage = loadImage("mountain.jpg");
  surface.setSize(mainimage.width, mainimage.height);
  mainimage.loadPixels();
  dots = new ArrayList<Dot>();
  for (int x = 0; x < mainimage.width; x += scale) {
    for (int y = 0; y < mainimage.height; y += scale) {
      int loc = x + y * (mainimage.width);
      
      dots.add(new Dot(x, y, mainimage.pixels[loc]));
    }
  }
}

void draw() { 
  fill(boxColor);
  noStroke();
  rect(40, 40, 8, 8);
  rect(100, 320, 8, 8);
  rect(130, 480, 8, 8);
  rect(180, 90, 8, 8);
  rect(230, 170, 8, 8);
  rect(280, 120, 8, 8);
  rect(320, 400, 8, 8);
  rect(360, 540, 8, 8);
  rect(420, 619, 8, 8);
  rect(490, 270, 8, 8);
  rect(700, 190, 8, 8);
  rect(720, 260, 8, 8);
  rect(760, 60, 8, 8);
  rect(400, 350, 8, 8);
  rect(600, 480, 8, 8);
  rect(260, 765, 8, 8);
  rect(470, 80, 8, 8);
  rect(620, 130, 8, 8);
  rect(80, 120, 8, 8);
  rect(380, 290, 8, 8);
  rect(480, 500, 8, 8);
  rect(650, 400, 8, 8);
  boxColor = color(255, mouseX, mouseY);
  for (Dot dot : dots) {
    dot.run();
  }
  surface.setTitle("" + frameRate);
}

//Image that was used:
//https://unsplash.com/photos/9wg5jCEPBsw

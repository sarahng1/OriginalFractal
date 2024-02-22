void setup() {
  size(400, 400);
  background(255);
  drawRose(width / 2, height / 2, 80, 8);
}

void drawRose(float x, float y, float radius, int depth) {
  if (depth == 0) {
    return;
  }

  fill(random(255), random(100), random(200));
  noStroke();
  ellipse(x, y, radius * 2, radius * 2);

  float newRadius = radius * 0.7;
  drawRose(x + radius * 0.6, y, newRadius, depth - 1);
  drawRose(x - radius * 0.6, y, newRadius, depth - 1);
  drawRose(x, y + radius * 0.6, newRadius, depth - 1);
  drawRose(x, y - radius * 0.6, newRadius, depth - 1);
}

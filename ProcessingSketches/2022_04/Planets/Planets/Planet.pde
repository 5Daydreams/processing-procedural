class Planet
{
  PVector planetPos;
  PVector planetVel;
  PVector planetAcc;
  float planetMass;
  color planetColor;

  Planet(PVector pos, PVector vel, float mass, color c)
  {
    planetPos = pos;
    planetVel = vel;
    planetMass = mass;
    planetColor = c;
  }

  void update()
  {
    planetAcc = PVector.sub(PVector.add(mainPlanetPos, centerPos).mult(0.5f), planetPos);
    planetAcc.normalize();
    planetAcc.mult(1.0f/planetMass);
    planetVel.add(planetAcc);

    PVector tempVel = PVector.mult(planetVel, deltaTime);
    planetPos.add(tempVel);
  }

  void drawPlanet()
  {
    fill(planetColor);
    circle(planetPos.x, planetPos.y, 5*planetMass);
  }
}

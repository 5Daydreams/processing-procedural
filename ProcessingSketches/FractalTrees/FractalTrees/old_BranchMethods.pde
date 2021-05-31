class OldBranch
{
  PVector begin;
  PVector end;
  boolean sprouted = false;

  OldBranch(PVector begin, PVector end)
  {
    this.begin = begin;
    this.end = end;
  }

  void DrawBranch()
  {
    line(begin.x, begin.y, end.x, end.y);
  }

  OldBranch Reiterate(float sizeReduction, float angle)
  {
    PVector direction = PVector.sub(this.end, this.begin);
    direction.mult(sizeReduction * ((noise(millis()/1000.0f)+0.5)*0.8f ));
    direction.rotate(angle);
    PVector newEndPoint = PVector.add(this.end, direction);

    sprouted = true;

    return new OldBranch(this.end, newEndPoint);
  }

  void Sway()
  {
    float xVal = noise(end.x + millis()/1000.0f)*2-1;
    float yVal = noise(end.y + millis()/1000.0f)*2-1;
    
    PVector offset = new PVector(xVal,yVal);
    end.add(offset);
  }
}

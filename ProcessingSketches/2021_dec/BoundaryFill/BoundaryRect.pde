
public class BoundaryRect
{
  PVector minPoint;
  PVector maxPoint;
  PVector bottomLeftPoint;
  PVector topRightPoint;

  float diagonalSize;

  BoundaryRect(float xMin, float xMax, float yMin, float yMax)
  {
    minPoint = new PVector(xMin, yMin);
    maxPoint = new PVector(xMax, yMax);
    bottomLeftPoint = new PVector(xMin, yMax);
    topRightPoint = new PVector(xMax, yMin);

    diagonalSize = PVector.dist(minPoint, maxPoint);

    fill(205, 0, 0);
    rectMode(CENTER);
    rect(0, 0, xMax-xMin, yMax-yMin);
  }

  void DrawLinesOld(PVector drawDirection, float spacing)
  {
    if (drawDirection.x <= 0.0f)
    {
      drawDirection.mult(-1);
    }

    float slope;

    if (drawDirection.x != 0.0f)
    {
      slope = drawDirection.y/ drawDirection.x;
    } else
    {
      slope = drawDirection.y;
    }

    PVector startPos;
    PVector endPos;

    if (slope >= 0.0f)
    {
      // offsets towards up-right
      startPos = bottomLeftPoint;
      endPos = topRightPoint;
    } else
    {
      // offsets towards down-right
      startPos = minPoint;
      endPos = maxPoint;
    }

    PVector stepDirection = new PVector(endPos.x - startPos.x, endPos.y - startPos.y);
    stepDirection.normalize();

    drawDirection.normalize();

    stroke(0);

    for (float k = spacing; k < diagonalSize; k += spacing)
    {
      PVector iterationDrawPoint = PVector.add(startPos, PVector.mult(stepDirection, (k)) );
      // start from bottomLeftPoint

      float growingValue = k;
      float diagonalFactor = min(growingValue, diagonalSize-growingValue);

      PVector lineStart = PVector.add(iterationDrawPoint, PVector.mult(drawDirection, diagonalFactor));
      PVector lineEnd = PVector.add(iterationDrawPoint, PVector.mult(drawDirection, -diagonalFactor));

      line(lineStart.x, lineStart.y, lineEnd.x, lineEnd.y);
    }
  }
  
  void DrawLines(PVector drawDirection, float spacing)
  {
    if (drawDirection.x <= 0.0f)
    {
      drawDirection.mult(-1);
    }

    float slope;

    if (drawDirection.x != 0.0f)
    {
      slope = drawDirection.y/ drawDirection.x;
    } else
    {
      slope = drawDirection.y;
    }

    PVector startPos;
    PVector endPos;

    if (slope >= 0.0f)
    {
      // offsets towards up-right
      startPos = bottomLeftPoint;
      endPos = topRightPoint;
    } else
    {
      // offsets towards down-right
      startPos = minPoint;
      endPos = maxPoint;
    }

    PVector stepDirection = new PVector(endPos.x - startPos.x, endPos.y - startPos.y);
    stepDirection.normalize();

    drawDirection.normalize();

    stroke(0);

    for (float k = 0; k < diagonalSize; k += spacing)
    {
      PVector iterationDrawPoint = PVector.add(startPos, PVector.mult(stepDirection, (k)) );
      // start from bottomLeftPoint

      PVector lineStart = new PVector(iterationDrawPoint.x,iterationDrawPoint.y);

      while (WithinBoundary(lineStart))
      {
          lineStart = lineStart.add(PVector.mult(drawDirection,1));
      }
      
      PVector lineEnd = new PVector(iterationDrawPoint.x,iterationDrawPoint.y);
      
      while (WithinBoundary(lineEnd))
      {
          lineEnd = lineEnd.add(PVector.mult(drawDirection,-1));
      }

      line(lineStart.x, lineStart.y, lineEnd.x, lineEnd.y);
    }
  }
  
  boolean WithinBoundary(PVector vector)
  {
     if(minPoint.x < vector.x && vector.x < maxPoint.x && minPoint.y < vector.y && vector.y < maxPoint.y)
     {
       return true;
     }
     return false;
  }
}

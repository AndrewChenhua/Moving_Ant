void saveCurrentFrameAsPng()
{
  //if (keyPressed)
  //{
  //  if (keyCode == ' ')
  //  {
      if (Frame_Count <=  Total_Frame)
      {
        saveFrame("MovingAnt-######.png");
        Frame_Count++;
      }
      if (Frame_Count >=  Total_Frame)
      {
        noLoop();
      }
    }
  //}
//}

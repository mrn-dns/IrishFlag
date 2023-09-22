/*
Name :  Marincaș Denis Remus
 Student Number: 20099160
 Programme Name: IrishMatrice
 
 Brief description of the animation achieved: The programme draws 3 irish flags on a row , having 10 rows therefore 30 irish flags.
 
 Known bugs/problems: 
 
 Any sources referred to during the development of the assignment (no need to reference lecture/lab materials):
 
 */
void setup() {
  size(540, 540);
  background(0);
  frameRate(2); //speed at which the animation is executed
  backGrid(20); //choose size for background grid
}

int yCoord=0;
int xCoord, i, row, CurrentAmountofBlocks;

void draw() {
  drawBlock();
}

void drawBlock() {
  xCoord=0;
  for (i=0; i<= CurrentAmountofBlocks; i++)
  {
    //colouring scheme
    if (i%3==0)
      fill(#00ff00); //green
    else if (i ==4)
      fill(255); //white
    else if (i == 5)
      fill(#FFA500); //orange
    else if (i%2 == 0) 
      fill(#FFA500); //orange
    else fill(255); //white
    rect(xCoord, yCoord, 60, 60); 
    xCoord += 60; //moves the next square 60 units to the right
  }
  CurrentAmountofBlocks++; //changes the amount of blocks between each iteration of draw
  if (CurrentAmountofBlocks%9== 0) { //verifies row completion
    CurrentAmountofBlocks = 0; //resets block count
    yCoord += 60; //changes row
    row++;
  }
  println(row, i); //shows what current row and column we are on
}

void backGrid(int size)
{
  for (int y=0; y < height; y = y +size)
  {
    for (int x = 0; x < width; x = x+size)
    {
      fill(random(100));
      rect(x, y, size, size);
    }
  }
}

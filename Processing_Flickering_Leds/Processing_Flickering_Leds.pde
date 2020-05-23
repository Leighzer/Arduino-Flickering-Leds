boolean[][] grid;

final int sizeX = 1200;
final int sizeY = 900;

int i = 0;
int j = 0;
int updateAmount = sizeX * 10;//* (sizeY / 16);

public void setup(){  
  grid = new boolean[sizeX][sizeY];
  
  for(int i = 0; i < sizeX; i++){
    for(int j = 0; j < sizeY; j++){
      grid[i][j] = false;
      drawPixel(i,j,false);//start with completely black screen
    }
  }
  
  size(1200,900);
  
  strokeWeight(1);
  noSmooth();
  frameRate(30);  
}

public void draw(){
  for(int z = 0; z < updateAmount; z++){    
    int ran = (int)random(2);
    if(ran != 0){
      grid[i][j] = !grid[i][j];
      drawPixel(i,j,grid[i][j]);//draw pixels that have updated state
    }
    
    i++;
    if(i == sizeX){
      i = 0;
      j++;
    }
    if(j == sizeY){
      j = 0;
    }
  } //<>//
  if(mousePressed){
    saveFrame();
  }
}

public void drawPixel(int i, int j, boolean state){
  if(state){
    stroke(255);
  }
  else{
    stroke(0);
  }
  point(i,j);
}

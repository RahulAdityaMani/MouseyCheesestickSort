int[] cheesesticks = { 90, 150, 30, 22,56,34,67,213,78,23,67,43,98,89,45,63,92,26,42,87};
int x = 0;
int swap;
int size = 20;
int i = 0;
int j = 0;
void setup()
{
  size (300, 250);
  background (255);


fill(0);
  for(int a=0; a<size;a++)
  {
    rect(x, 250-cheesesticks[a], 10, cheesesticks[a]);
    x+=15;
  }
}



void draw()
{
 
  background(0);
  x=0;
  if ((i == 20) && (j < 19)) {
     j++;
     i=j+1;
  }
  // runs as long as j is less than 20
  if (i <= 19) {
    if (cheesesticks[i]>cheesesticks[j])
      {
        swap=cheesesticks[i];
        cheesesticks[i]=cheesesticks[j];
        cheesesticks[j]=swap;
      }
    i++;
    }

  //drawing the display

   fill(77,187,245);
  for(int a=cheesesticks.length-1; a>=0;a--)
  {
    rect(x, 250-cheesesticks[a], 10, cheesesticks[a]);
    x+=15;
  }

}

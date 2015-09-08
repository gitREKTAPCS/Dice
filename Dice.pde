int oneCounter =0;
int twoCounter =0;
int threeCounter =0;
int fourCounter =0;
int fiveCounter =0;
int sixCounter =0;

void setup()
{
	noLoop();
	size(600, 600);
}
void draw()
{
	background(0);
	
	for(int theX = 5; theX < 580; theX=theX+50)
  {
  	for(int theY = 5; theY < 533; theY=theY+50){
  	Die luis = new Die(theX, theY);
  	luis.roll();
	luis.show();
	strokeWeight(1);
	
	}
	
  }
  	textSize(8);
	text("One Total Count: " +oneCounter, 10, 588);
	text("Two Total Count: " +twoCounter, 110, 588);
	text("Three Total Count: " +threeCounter, 210, 588);
	text("Four Total Count: " +fourCounter, 310, 588);
	text("Five Total Count: " +fiveCounter, 410, 588);
	text("Six Total Count: " +sixCounter, 510, 588);

}
void mousePressed()
{
	redraw();
	
}
class Die //models one single dice cube
{
	//variable declarations here
	int dieX, dieY, rollermajigger;

	Die(int x, int y) //constructor
	{
		//variable initializations here
		dieX = x;
		dieY = y;
		
	}
	void roll()
	{
		//your code here
		int[] rollerMachine = {1,2,3,4,5,6};
		rollermajigger = rollerMachine[(int)(Math.random()*6)];
		 
	}
	void show()
	{
		rect(dieX, dieY, 50, 50);
		if(rollermajigger == 1){
			ellipse(dieX + 24, dieY + 24, 5, 5);
			oneCounter++;
		} else if (rollermajigger == 2) {
			ellipse(dieX + 35, dieY + 15, 5, 5);
			ellipse(dieX + 15, dieY + 35, 5, 5);
			twoCounter++;
		}else if (rollermajigger ==3 ){
			ellipse(dieX + 13, dieY + 37, 5, 5);
			ellipse(dieX + 37, dieY + 13, 5, 5);
			ellipse(dieX + 24, dieY + 24, 5, 5);
			threeCounter++;
		}else if (rollermajigger == 4){
			ellipse(dieX + 10, dieY + 40, 5, 5);
			ellipse(dieX + 10, dieY + 10, 5, 5);
			ellipse(dieX + 40, dieY + 40, 5, 5);
			ellipse(dieX + 40, dieY + 10, 5, 5);
			fourCounter++;
		}else if (rollermajigger == 5){
			ellipse(dieX + 10, dieY + 40, 5, 5);
			ellipse(dieX + 10, dieY + 10, 5, 5);
			ellipse(dieX + 40, dieY + 40, 5, 5);
			ellipse(dieX + 40, dieY + 10, 5, 5);
			ellipse(dieX + 24, dieY + 24, 5, 5);
			fiveCounter++;
		}else{
			ellipse(dieX + 15, dieY + 12, 5, 5);
			ellipse(dieX + 15, dieY + 27, 5, 5);
			ellipse(dieX + 15, dieY + 42, 5, 5);
			ellipse(dieX + 35, dieY + 12, 5, 5);
			ellipse(dieX + 35, dieY + 27, 5, 5);
			ellipse(dieX + 35, dieY + 42, 5, 5);
			sixCounter++;
		}
	}


}

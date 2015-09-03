Die luis = new Die(250,150);
void setup()
{
	noLoop();
	size(512, 512);
}
void draw()
{
	background(0);
	luis.roll();
	luis.show();
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
		rollermajigger = rollerMachine[(int)(Math.random()*7)];
		 
	}
	void show()
	{
		strokeWeight(2);
		rect(dieX, dieY, 50, 50);
		if(rollermajigger == 1){
			fill(0);
			ellipse(dieX + 24, dieY + 24, 5, 5);
		} else if (rollermajigger == 2) {
			fill(0);
			ellipse(dieX + 35, dieY + 15, 5, 5);
			ellipse(dieX + 15, dieY + 35, 5, 5);
		}else if (rollermajigger ==3 ){
			fill(0);
			ellipse(dieX + 13, dieY + 37, 5, 5);
			ellipse(dieX + 37, dieY + 13, 5, 5);
			ellipse(dieX + 24, dieY + 24, 5, 5);
		}else if (rollermajigger == 4){
			fill(0);
			ellipse(dieX + 17, dieY + 30, 5, 5);
			ellipse(dieX + 17, dieY + 20, 5, 5);
			ellipse(dieX + 33, dieY + 30, 5, 5);
			ellipse(dieX + 33, dieY + 20, 5, 5);
		}else if (rollermajigger == 5){
			fill(0);
			ellipse(dieX + 10, dieY + 40, 5, 5);
			ellipse(dieX + 10, dieY + 10, 5, 5);
			ellipse(dieX + 40, dieY + 40, 5, 5);
			ellipse(dieX + 40, dieY + 10, 5, 5);
			ellipse(dieX + 24, dieY + 24, 5, 5);
		}else{
			fill(0);
			ellipse(dieX + 15, dieY + 12, 5, 5);
			ellipse(dieX + 15, dieY + 27, 5, 5);
			ellipse(dieX + 15, dieY + 42, 5, 5);
			ellipse(dieX + 35, dieY + 12, 5, 5);
			ellipse(dieX + 35, dieY + 27, 5, 5);
			ellipse(dieX + 35, dieY + 42, 5, 5);
		}
		
		
	}
}

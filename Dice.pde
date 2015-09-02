void setup()
{
	noLoop();
	size(512, 512);
}
void draw()
{
	background(0);
	Die luis = new Die(250,150);
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
		//int[] rollerMachine = {1,2,3,4,5,6}
		//rollermajigger = rollerMachine[(int)Math.random()*7;]
		rollermajigger = 2; //(int)Math.random()*3
	}
	void show()
	{
		strokeWeight(2);
		rect(dieX, dieY, 50, 50);
		ellipse(dieX + 13, dieY + 37, 5, 5);
		ellipse(dieX + 37, dieY + 13, 5, 5);
		ellipse(dieX + 24, dieY + 24, 5, 5);
		/*if(rollermajigger == 1){
			fill(0);
			ellipse(dieX + 24, dieY + 24, 5, 5);
		} else if (rollermajigger == 2) {
			ellipse(dieX + 35, dieY + 15, 5, 5);
		ellipse(dieX + 15, dieY + 35, 5, 5);
		}else if (rollermajigger ==3 )
		*/
		
	}
}

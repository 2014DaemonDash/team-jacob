stop();
Wallace.stop();

var count:Number = 20;
var score = 0;
var win:Boolean = true;

counter.text = "Time Left: " + String(count);

var myTimer:Timer = new Timer(1000, count);

myTimer.start();

myTimer.addEventListener(TimerEvent.TIMER, countdown);

function countdown(e:TimerEvent): void {
	count--;
	counter.text = "Time Left: " + String(count);
//	scoreDisplay.text = "Score: " + String(score);
	if (count == 0) {
		gotoAndPlay(4);
	}
}

var symbols:Array = new Array(arm, ax, bananaPeel, 
								 battery, book, bottle, 
								 bottleCap, carton, cd, 
								 cockroach, coffeeCup, 
								 cup, battery2, drumstick, 
								 eggCarton, juiceBox, lavaLamp, 
								 lightbulb, lobster, magazine, 
								 milkCarton, mug, needle, 
								 origami, paper, paperBag, 
								 poop, receipt, spray, 
								 sunglasses, tissue, toiletPaper, 
								 tomato, windex, wrapper, napkin);

var trash:Array = new Array(battery, lightbulb, battery2,
							  cd, juiceBox, spray, needle, 
							  bottleCap, poop, lavaLamp, cup,
							  windex, eggCarton, mug);
var compost:Array = new Array(arm, bananaPeel, carton, wrapper,
							  drumstick, tomato, lobster, tissue,
							  cockroach);
var recycle:Array = new Array(book, napkin, magazine, paperBag,
							  bottle, milkCarton, coffeeCup,
							  paper, receipt, toiletPaper, origami);
								 
for (var i:int = 0; i < symbols.length; i++) {
	symbols[i].visible = false;
	//removeChild(symbols[i]);
}

var item:Array = new Array(5);
for (var j:int = 0; j < item.length; j++) {
	item[j] = symbols[Math.round(Math.random()*symbols.length)];
	//addChild(item[j]);
	item[j].visible = true;
}








/* Drag and Drop
Makes the specified symbol instance moveable with drag and drop.
*/

item[0].addEventListener(MouseEvent.MOUSE_DOWN, fl_ClickToDrag_1);

function fl_ClickToDrag_1(event:MouseEvent):void
{
	item[0].startDrag();
	stage.addEventListener(MouseEvent.MOUSE_UP, fl_ReleaseToDrop_1);
}


function fl_ReleaseToDrop_1(event:MouseEvent):void
{
	item[0].stopDrag();
	if (item[0].dropTarget) {
		if (trash.indexOf(item[0]) >= 0) {
			if (item[0].dropTarget.parent.name == "trash") {
				scoreDisplay.text = "Correct!";
				Wallace.play();
				item[0].visible = false;
		item[0].x = 9999;
		item[0].y = 9999;
			} else if (item[0].dropTarget.parent.name == "recycle" || item[0].dropTarget.parent.name == "compost") {
				scoreDisplay.text = "Wrong!";
				Wallace.stop();
				win = false;
				
				item[0].visible = false;
		item[0].x = 9999;
		item[0].y = 9999;
			}
		} else if (compost.indexOf(item[0]) >= 0) {
			if (item[0].dropTarget.parent.name == "compost") {
				Wallace.play();
				scoreDisplay.text = "Correct!";
				item[0].visible = false;
		item[0].x = 9999;
		item[0].y = 9999;
			} else if (item[0].dropTarget.parent.name == "recycle" || item[0].dropTarget.parent.name == "trash") {
				scoreDisplay.text = "Wrong!";
				Wallace.stop();
				win = false;
				item[0].visible = false;
		item[0].x = 9999;
		item[0].y = 9999;
			}
		} else {
			if (item[0].dropTarget.parent.name == "recycle") {
				scoreDisplay.text = "Correct!";
				Wallace.play();
				item[0].visible = false;
		item[0].x = 9999;
		item[0].y = 9999;
			} else if (item[0].dropTarget.parent.name == "recycle" || item[0].dropTarget.parent.name == "compost") {
				scoreDisplay.text = "Wrong!";
				Wallace.stop();
				win = false;
				item[0].visible = false;
		item[0].x = 9999;
		item[0].y = 9999;
			}
		}
	}
		trace(scoreDisplay.text+"0");
	stage.removeEventListener(MouseEvent.MOUSE_UP, fl_ReleaseToDrop_1);
	var notAllVisible:Boolean = true;
	for (var i:int = 0; i < 5; i++) {
		if (item[i].visible == true)
		{
			notAllVisible = false;
		}
		//removeChild(symbols[i]);
	}
	if (notAllVisible == true)
		if (win == true)
			gotoAndPlay(6);
		else
			gotoAndPlay(7);
}









item[1].addEventListener(MouseEvent.MOUSE_DOWN, fl_ClickToDrag_2);

function fl_ClickToDrag_2(event:MouseEvent):void
{
	item[1].startDrag();
	stage.addEventListener(MouseEvent.MOUSE_UP, fl_ReleaseToDrop_2);
}


function fl_ReleaseToDrop_2(event:MouseEvent):void
{
	item[1].stopDrag();
	if (item[1].dropTarget) {
		if (trash.indexOf(item[1]) >= 0) {
			if (item[1].dropTarget.parent.name == "trash") {
				Wallace.play();
				scoreDisplay.text = "Correct!";
				item[1].visible = false;
		item[1].x = 9999;
		item[1].y = 9999;
			} else if (item[1].dropTarget.paren.namet == "recycle" || item[1].dropTarget.parent.name == "compost") {
				scoreDisplay.text = "Wrong!";
				Wallace.stop();
				win = false;
				item[1].visible = false;
		item[1].x = 9999;
		item[1].y = 9999;
			}
		} else if (compost.indexOf(item[1]) >= 0) {
			if (item[1].dropTarget.parent.name == "compost") {
				scoreDisplay.text = "Correct!";
				Wallace.play();
				item[1].visible = false;
		item[1].x = 9999;
		item[1].y = 9999;
			} else if (item[1].dropTarget.parent.name == "recycle" || item[1].dropTarget.parent.name == "trash") {
				scoreDisplay.text = "Wrong!";
				Wallace.stop();
				win = false;
				item[1].visible = false;
		item[1].x = 9999;
		item[1].y = 9999;
			}
		} else {
			if (item[1].dropTarget.parent.name == "recycle") {
				Wallace.play();
				scoreDisplay.text = "Correct!";
				item[1].visible = false;
		item[1].x = 9999;
		item[1].y = 9999;
			} else if (item[1].dropTarget.parent.name == "recycle" || item[1].dropTarget.parent.name == "compost") {
				scoreDisplay.text = "Wrong!";
				Wallace.stop();
				win = false;
				item[1].visible = false;
		item[1].x = 9999;
		item[1].y = 9999;
			}
		}
	}
		trace(scoreDisplay.text+"1");
	stage.removeEventListener(MouseEvent.MOUSE_UP, fl_ReleaseToDrop_2);
	var notAllVisible:Boolean = true;
	for (var i:int = 0; i < 5; i++) {
		if (item[i].visible == true)
		{
			notAllVisible = false;
		}
		//removeChild(symbols[i]);
	}
	if (notAllVisible == true)
		if (win == true)
			gotoAndPlay(6);
		else
			gotoAndPlay(7);
}















item[2].addEventListener(MouseEvent.MOUSE_DOWN, fl_ClickToDrag_3);

function fl_ClickToDrag_3(event:MouseEvent):void
{
	item[2].startDrag();
	stage.addEventListener(MouseEvent.MOUSE_UP, fl_ReleaseToDrop_3);
}


function fl_ReleaseToDrop_3(event:MouseEvent):void
{
	item[2].stopDrag();
	if (item[2].dropTarget) {
		if (trash.indexOf(item[2]) >= 0) {
			if (item[2].dropTarget.parent.name == "trash") {
				scoreDisplay.text = "Correct!";
				Wallace.play();
				item[2].visible = false;
		item[2].x = 9999;
		item[2].y = 9999;
			} else if (item[2].dropTarget.parent.name == "recycle" || item[2].dropTarget.parent.name == "compost") {
				scoreDisplay.text = "Wrong!";
				Wallace.stop();
				win = false;
				item[2].visible = false;
		item[2].x = 9999;
		item[2].y = 9999;
			}
		} else if (compost.indexOf(item[2]) >= 0) {
			if (item[2].dropTarget.parent.name == "compost") {
				scoreDisplay.text = "Correct!";
				Wallace.play();
				item[2].visible = false;
		item[2].x = 9999;
		item[2].y = 9999;
			} else if (item[2].dropTarget.parent.name == "recycle" || item[2].dropTarget.parent.name == "trash") {
				scoreDisplay.text = "Wrong!";
				Wallace.stop();
				win = false;
				item[2].visible = false;
		item[2].x = 9999;
		item[2].y = 9999;
			}
		} else {
			if (item[2].dropTarget.parent.name == "recycle") {
				scoreDisplay.text = "Correct!";
				Wallace.play();
				item[2].visible = false;
		item[2].x = 9999;
		item[2].y = 9999;
			} else if (item[2].dropTarget.parent.name == "recycle" || item[2].dropTarget.parent.name == "compost") {
				scoreDisplay.text = "Wrong!";
				Wallace.stop();
				win = false;
				item[2].visible = false;
		item[2].x = 9999;
		item[2].y = 9999;
			}
		}
	}
		trace(scoreDisplay.text+"2");
	stage.removeEventListener(MouseEvent.MOUSE_UP, fl_ReleaseToDrop_3);
	var notAllVisible:Boolean = true;
	for (var i:int = 0; i < 5; i++) {
		if (item[i].visible == true)
		{
			notAllVisible = false;
		}
		//removeChild(symbols[i]);
	}
	if (notAllVisible == true)
		if (win == true)
			gotoAndPlay(6);
		else
			gotoAndPlay(7);
}











item[3].addEventListener(MouseEvent.MOUSE_DOWN, fl_ClickToDrag_4);

function fl_ClickToDrag_4(event:MouseEvent):void
{
	item[3].startDrag();
	stage.addEventListener(MouseEvent.MOUSE_UP, fl_ReleaseToDrop_4);
}


function fl_ReleaseToDrop_4(event:MouseEvent):void
{
	item[3].stopDrag();
	if (item[3].dropTarget) {
		if (trash.indexOf(item[3]) >= 0) {
			if (item[3].dropTarget.parent.name == "trash") {
				scoreDisplay.text = "Correct!";
				Wallace.play();
				item[3].visible = false;
		item[3].x = 9999;
		item[3].y = 9999;
			} else if (item[3].dropTarget.parent.name == "recycle" || item[3].dropTarget.parent.name == "compost") {
				scoreDisplay.text = "Wrong!";
				Wallace.stop();
				win = false;
				item[3].visible = false;
		item[3].x = 9999;
		item[3].y = 9999;
			}
		} else if (compost.indexOf(item[3]) >= 0) {
			if (item[3].dropTarget.parent.name == "compost") {
				scoreDisplay.text = "Correct!";
				Wallace.play();
				item[3].visible = false;
		item[3].x = 9999;
		item[3].y = 9999;
			} else if (item[3].dropTarget.parent.name == "recycle" || item[3].dropTarget.parent.name == "trash") {
				scoreDisplay.text = "Wrong!";
				Wallace.stop();
				win = false;
				item[3].visible = false;
		item[3].x = 9999;
		item[3].y = 9999;
			}
		} else {
			if (item[3].dropTarget.parent.name == "recycle") {
				scoreDisplay.text = "Correct!";
				Wallace.play();
				item[3].visible = false;
		item[3].x = 9999;
		item[3].y = 9999;
			} else if (item[3].dropTarget.parent.name == "recycle" || item[3].dropTarget.parent.name == "compost") {
				scoreDisplay.text = "Wrong!";
				Wallace.stop();
				win = false;
				item[3].visible = false;
		item[3].x = 9999;
		item[3].y = 9999;
			}
		}
	}
		trace(scoreDisplay.text+"3");
	stage.removeEventListener(MouseEvent.MOUSE_UP, fl_ReleaseToDrop_4);
	var notAllVisible:Boolean = true;
	for (var i:int = 0; i < 5; i++) {
		if (item[i].visible == true)
		{
			notAllVisible = false;
		}
		//removeChild(symbols[i]);
	}
	if (notAllVisible == true)
		if (win == true)
			gotoAndPlay(6);
		else
			gotoAndPlay(7);
}













item[4].addEventListener(MouseEvent.MOUSE_DOWN, fl_ClickToDrag_5);

function fl_ClickToDrag_5(event:MouseEvent):void
{
	item[4].startDrag();
stage.addEventListener(MouseEvent.MOUSE_UP, fl_ReleaseToDrop_5);
}


function fl_ReleaseToDrop_5(event:MouseEvent):void
{
	item[4].stopDrag();
	if (item[4].dropTarget) {
		if (trash.indexOf(item[4]) >= 0) {
			if (item[4].dropTarget.parent.name == "trash") {
				scoreDisplay.text = "Correct!";
				Wallace.play();
				item[4].visible = false;
		item[4].x = 9999;
		item[4].y = 9999;
			} else if (item[4].dropTarget.parent.name == "recycle" || item[4].dropTarget.parent.name == "compost") {
				scoreDisplay.text = "Wrong!";
				Wallace.stop();
				win = false;
				item[4].visible = false;
		item[4].x = 9999;
		item[4].y = 9999;
			}
		} else if (compost.indexOf(item[4]) >= 0) {
			if (item[4].dropTarget.parent.name == "compost") {
				scoreDisplay.text = "Correct!";
				Wallace.play();
				item[4].visible = false;
		item[4].x = 9999;
		item[4].y = 9999;
			} else if (item[4].dropTarget.parent.name == "recycle" || item[4].dropTarget.parent.name == "trash") {
				scoreDisplay.text = "Wrong!";
				Wallace.stop();
				win = false;
				item[4].visible = false;
		item[4].x = 9999;
		item[4].y = 9999;
			}
		} else {
			if (item[4].dropTarget.parent.name == "recycle") {
				scoreDisplay.text = "Correct!";
				Wallace.play();
				item[4].visible = false;
		item[4].x = 9999;
		item[4].y = 9999;
			} else if (item[4].dropTarget.parent.name == "recycle" || item[4].dropTarget.parent.name == "compost") {
				scoreDisplay.text = "Wrong!";
				Wallace.stop();
				win = false;
				item[4].visible = false;
		item[4].x = 9999;
		item[4].y = 9999;
			}
		}
	}
		trace(scoreDisplay.text+"4");
stage.removeEventListener(MouseEvent.MOUSE_UP, fl_ReleaseToDrop_5);
	var notAllVisible:Boolean = true;
	for (var i:int = 0; i < 5; i++) {
		if (item[i].visible == true)
		{
			notAllVisible = false;
		}
		//removeChild(symbols[i]);
	}
	if (notAllVisible == true)
		if (win == true)
			gotoAndPlay(6);
		else
			gotoAndPlay(7);
}
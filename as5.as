stop();

Btn_play_again.addEventListener(MouseEvent.CLICK, f6_ClickToGoToScene);

function f6_ClickToGoToScene(event:MouseEvent):void
{
	//MovieClip(this.root).gotoAndPlay(1, "Scene 2");
	gotoAndPlay(2);
}
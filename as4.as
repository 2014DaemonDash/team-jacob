stop();

Btn_play_again.addEventListener(MouseEvent.CLICK, f4_ClickToGoToScene);

function f4_ClickToGoToScene(event:MouseEvent):void
{
	//MovieClip(this.root).gotoAndPlay(1, "Scene 2");
	gotoAndPlay(2);
}
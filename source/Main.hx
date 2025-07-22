package;

import flixel.FlxGame;
import haxe.ui.Toolkit;
import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();
		
		Toolkit.init();
    	Toolkit.theme = 'dark';
		addChild(new FlxGame(1920, 1080, PlayState, 60, 60, true, false));
	}
}

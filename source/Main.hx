package;

import flixel.FlxG;
import flixel.FlxGame;
import haxe.ui.Toolkit;
import lime.app.Application;
import openfl.display.Sprite;
import openfl.system.Capabilities;

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

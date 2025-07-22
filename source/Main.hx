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
		Application.current.window.borderless = true;
		Application.current.window.width = Math.round(Capabilities.screenResolutionX) + 1;
		Application.current.window.height = Math.round(Capabilities.screenResolutionY);
		Application.current.window.x = -1;
		Application.current.window.y = 0;
		FlxG.mouse.useSystemCursor = true;
	}
}

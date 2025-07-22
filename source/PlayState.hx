package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxGradient;
import haxe.ui.*;
import haxe.ui.components.Label;
import haxe.ui.containers.*;


class PlayState extends FlxState
{
	override public function create()
	{
		super.create();

		var background:FlxSprite = FlxGradient.createGradientFlxSprite(FlxG.width, FlxG.height, [0xFFfeb582, 0xFF85e7d8, 0xFFd49dd4], 1, 45, true);
		add(background);

		var mainMenuUI = RuntimeComponentBuilder.build("assets/data/styles/menu-ui.xml");
		mainMenuUI.antialiasing = true;
        if (mainMenuUI == null) return;

		FlxG.camera.bgColor = 0xFF111111;

		var container = new Box();
        container.setSize(FlxG.width/1.5, FlxG.height/1.5);
		container.addClass("modMenuView");
		container.screenCenter();
		add(container);

		var menuTitle = mainMenuUI.findComponent("menuTitle", Label);
		menuTitle.antialiasing = true;
		menuTitle.scale.set(0.5, 0.5);

        //menuTitle.camera = modMenuCam;
        //menuTitle.left = modsListView.left + modsListView.width * 0.45;
        container.addComponent(menuTitle);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}

package;

import flixel.FlxG;
import flixel.FlxGame;
import openfl.display.FPS;
import openfl.display.Sprite;

class Main extends Sprite
{
	public static var fpsVar:FPS;

	public function new()
	{
		super();

		SUtil.gameCrashCheck();

		SUtil.doTheCheck();

		ClientPrefs.loadDefaultKeys();

		addChild(new FlxGame(0, 0, TitleState, 1, 60, 60, true, false));

		fpsVar = new FPS(10, 3, 0xFFFFFF);
		addChild(fpsVar);
		if (fpsVar != null)
			fpsVar.visible = ClientPrefs.showFPS;

		#if html5
		FlxG.autoPause = false;
		FlxG.mouse.visible = false;
		#end
	}
}
package android.flixel;

import flixel.FlxG;
import flixel.util.FlxDestroyUtil;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.graphics.FlxGraphic;
import flixel.group.FlxSpriteGroup;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import android.flixel.FlxButton;
import flixel.util.FlxColor;
import flixel.FlxSprite;

// Mofifications by saw (m.a. jigsaw)
// VS Poyo hitbox mod by Poyo
class FlxHitbox extends FlxSpriteGroup 
{
	public var hitbox:FlxSpriteGroup;

	public var buttonLeft:FlxButton;
	public var buttonDown:FlxButton;
	public var buttonUp:FlxButton;
	public var buttonRight:FlxButton;

	public function new()
	{
		super();

		hitbox = new FlxSpriteGroup();

		buttonLeft = new FlxButton(0, 0);
		buttonDown = new FlxButton(0, 0);
		buttonUp = new FlxButton(0, 0);
		buttonRight = new FlxButton(0, 0);

		hitbox.add(add(buttonLeft = createHitbox(0, 0, 'left', 0xFFFF00FF)));
		hitbox.add(add(buttonDown = createHitbox(FlxG.width / 4, 0, 'down', 0xFF00FFFF)));
		hitbox.add(add(buttonUp = createHitbox(FlxG.width / 2, 0, 'up', 0xFF00FF00)));
		hitbox.add(add(buttonRight = createHitbox((FlxG.width / 2) + (FlxG.width / 4), 0, 'right', 0xFFFF0000)));
	}

	public function createHitbox(x:Float = 0, y:Float = 0, frames:String, ?color:Int):FlxButton
	{
		var hint:FlxHitboxHint = new FlxHitboxHint(x, y, frames);
		hint.antialiasing = ClientPrefs.globalAntialiasing;
		hint.setGraphicSize(Std.int(FlxG.width / 4), FlxG.height);
		hint.updateHitbox();
		hint.solid = false;
		hint.immovable = true;
		hint.alpha = 0.1;
		hint.scrollFactor.set();
		hint.onDown.callback = function()
		{
			hint.alpha = 1;
		}
		hint.onUp.callback = function()
		{
		  hint.alpha = 0.1;
		}
		hint.onOver.callback = hint.onDown.callback;
		hint.onOut.callback = hint.onUp.callback;
		return hint;
	}

	override function destroy()
	{
		super.destroy();

		hitbox = FlxDestroyUtil.destroy(hitbox);
		hitbox = null;

		buttonLeft = null;
		buttonDown = null;
		buttonUp = null;
		buttonRight = null;
	}
}

class FlxHitboxHint extends FlxButton
{
	public function new(x:Float = 0, y:Float = 0, frames:String)
	{
		super(x, y);
		
		loadGraphic(FlxGraphic.fromFrame(getFrames().getByName(frames)));
		alpha = 0.00001;

		onDown.callback = function() {FlxTween.num(0.00001, 0.75, 0.075, {ease:FlxEase.circInOut}, function(value:Float) {alpha = value;});}
		onUp.callback = function() {FlxTween.num(0.75, 0.00001, 0.1, {ease:FlxEase.circInOut}, function(value:Float) {alpha = value;});}
		onOut.callback = function() {FlxTween.num(alpha, 0.00001, 0.2, {ease:FlxEase.circInOut}, function(value:Float) {alpha = value;});}
		#if FLX_DEBUG
		ignoreDrawDebug = true;
		#end
	}

	public function getFrames():FlxAtlasFrames
	{
		return Paths.getSparrowAtlas('android/hitbox');
	}
}

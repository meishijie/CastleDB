package;
import flash.display.BlendMode;
import flixel.addons.ui.FlxUIDropDownMenu;
import flixel.addons.ui.FlxUINumericStepper;
import flixel.addons.ui.FlxUIState;
import flixel.addons.ui.interfaces.IFlxUIWidget;
import flixel.addons.ui.StrNameLabel;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import openfl.Assets;
import dat.Data;
/**
 * BlendModes demo
 *
 * @author Lars Doucet
 * @link https://github.com/HaxeFlixel/flixel-demos/BlendModes
 */
class PlayState extends FlxUIState
{
	private var _bottom:FlxSprite;
	private var _top:FlxSprite;
	
	private var _step_alpha:FlxUINumericStepper;
	
	private var _bottoms:Map<String,FlxSprite>;
	private var _tops:Map<String,FlxSprite>;
	
	private var _list_blends:Array<String> = null;
	
	override public function create():Void
	{
		super.create();
		Data.load( openfl.Assets.getText("source/test.cdb"));
		//trace(Data.items.get(sword).alt.fx);
		//trace(Data.items.get(sword).alt.test);
		//trace(switch( Data.items.get(herb).fx ) { 
		/*	case Monster(m): 
				m.cname; 
				var txt = new FlxText(0, 0, 100, "ccc");
				txt.setFormat("assets/font/f12.ttf", 12, FlxColor.WHITE, CENTER);
				add(txt);
				txt.text = m.cname;
				default: null; 
		
		} );
		
		for (i in 0...Data.monsters.resolve("wolf").skills.length){
			var txt = new FlxText(0, i*20, 100, "ccc");
			txt.setFormat("assets/font/f12.ttf", 12, FlxColor.WHITE, LEFT);
			add(txt);
			var cname = Data.monsters.resolve("wolf").skills[i].cname;
			txt.text = cname;
		}*/	
		
		for (i in 0...Data.monsters.all.length){
			var txt = new FlxText(0, i*20,1000, "ccc");
			txt.setFormat("assets/font/f12.ttf", 12, FlxColor.WHITE, LEFT);
			add(txt);
			var cname = Data.monsters.resolve("wolf").imageUrl;
			txt.text = cname.substr(3);
			var img = new FlxSprite(0, i*200);
			img.loadGraphic(cname.substr(3));
			add(img);
		}
		
		//for( s in Data.monsters.resolve("wolf").skills[0].sub )
		//	trace(s);
	}

	
	
}
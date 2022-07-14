
function onCreate()
--setPropertyFromClass('openfl.Lib', 'application.window.width', 1280-320)
        --setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);
	--runHaxeCode([[
	--FlxG.mouse.unload();
	--FlxG.log.add("Sexy mouse cursor " + Paths.image("custom_mouse_cursor"));
	--FlxG.mouse.load(Paths.image("custom_mouse_cursor").bitmap, 1.5, 0);
	--]])

luaDebugMode = true
makeLuaSprite('obj1', 'pause/top', -100, 0);
scaleObject('obj1', 0.7, 0.8);
addLuaSprite('obj1', true);
setProperty('obj1.alpha', 0);

makeLuaSprite('obj', 'pause/panel', 1000, 0);
scaleObject('obj', 0.8, 0.7);
addLuaSprite('obj', true);
setProperty('obj.alpha', 0);

setObjectCamera('obj', 'other');
setObjectCamera('obj1', 'other');
end

function onSongStart()
setPropertyFromClass('FlxG', 'mouse.visible', true);
end

function onPause()
setProperty('obj.alpha', 1);
setProperty('obj1.alpha', 1);
doTweenX('move1', 'timeBar',70 , 0.2, 'linear');
doTweenY('move2', 'timeBar', 200, 0.2, 'linear');
return Function_Continue;
end

function onResume()
doTweenX('move1', 'timeBar',440 , 0.2, 'linear');
doTweenY('move2', 'timeBar', 30, 0.2, 'linear');
setProperty('obj.alpha', 0);
setProperty('obj1.alpha', 0);
return Function_Continue;
end

--function onDestroy()
--setPropertyFromClass('flixel.FlxG', 'mouse.visible', false);
--runHaxeCode('FlxG.mouse.unload();')
--end

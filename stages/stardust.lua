local width = 0
local spriteName = "prey/stardustBg" -- replace limoSunset with the name of your sprite

function onCreate()
	makeLuaSprite("bg1", spriteName, 0, -400)
	width = getProperty("bg1.width")
	
	makeLuaSprite("bg2", spriteName, width-20, -400)
	
makeLuaSprite('dark', 'black', -100, 200);
	setScrollFactor('dark', 0.9, 1);
	scaleObject('dark', 2, 1.3);

makeLuaSprite('cover', 'black', 0, -300);
	setScrollFactor('cover', 0.9, 1);
	scaleObject('cover', 2, 0.8);

	addLuaSprite("bg1", false)
	addLuaSprite("bg2", false)
	addLuaSprite('dark', false);
       addLuaSprite('cover', false);
	setObjectCamera('cover', 'other');

	close(true); 
end
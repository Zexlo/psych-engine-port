local width = 0
local spriteName = "prey/stardustBg" -- replace limoSunset with the name of your sprite

function onCreate()
	makeLuaSprite("bg1", spriteName, 0, -400)
	width = getProperty("bg1.width")
	
	makeLuaSprite("bg2", spriteName, width-20, -400)
	
makeLuaSprite('dark', 'black', -150, 200);
	setScrollFactor('dark', 0.9, 1);
	scaleObject('dark', 2, 3);

	addLuaSprite("bg1", false)
	addLuaSprite("bg2", false)
	addLuaSprite('dark', false);
	setObjectCamera('cover', 'other');

	close(true); 
end
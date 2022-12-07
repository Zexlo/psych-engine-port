function onCreate()

	makeLuaSprite('Gmod', 'sanicbg', -900, -200);
scaleObject('Gmod', 1.2, 1.2);

	addLuaSprite('Gmod', false);

		
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
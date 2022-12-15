function onCreate()
 
    makeLuaSprite('BG', 'xterion/sky', -600, -500);
    makeLuaSprite('floor', 'xterion/floor', -600, 780);
	
	scaleObject('BG', 2, 2);
	scaleObject('floor', 2, 2);	

	addLuaSprite('BG', false);
	addLuaSprite('floor', false);		
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
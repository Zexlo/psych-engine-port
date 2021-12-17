function onCreate()
 
      	makeLuaSprite('TailsBG', 'TailsBG', -400, -100);
	setScrollFactor('TailsBG', 0.9, 0.9);
	scaleObject('TailsBG', 1.1, 1.1);

	addLuaSprite('TailsBG', false);

		
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
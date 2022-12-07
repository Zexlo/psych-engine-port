function onCreate()
 
    makeLuaSprite('SunkBG', 'sunky/SunkBG', -100, 0);
	makeLuaSprite('stage', 'sunky/stage', -200, -130);
	makeLuaSprite('ratio', 'sunky/4_3ratio', 0, 0);
	makeLuaSprite('ball', 'sunky/ball', 100, -50);
	
	setObjectCamera('ratio', 'other');
	setObjectOrder('ratio', getObjectOrder('blackbox')-1)
	setScrollFactor('SunkBG', 0.9, 0.9);
	setScrollFactor('ball', 0.9, 0.9);

	scaleObject('ball', 0.9, 0.9); 
	
	addLuaSprite('SunkBG', false);
	addLuaSprite('stage', false);
	addLuaSprite('ratio', true);
	addLuaSprite('ball', false);	
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
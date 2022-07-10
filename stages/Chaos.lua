function onCreate()

	makeLuaSprite('CWall', 'chaos/CWall', -2000, -4390);
	setScrollFactor('CWall', 0.8, 1);
	
	
	makeLuaSprite('CFloor', 'chaos/CFloor', -2000, 300);
	setScrollFactor('CFloor', 1, 1);
	scaleObject('CFloor', 0.9, 0.9);
	
	makeAnimatedLuaSprite('hole', 'chaos/The Chamber', -800, 100);
    addAnimationByPrefix('hole', 'idle', 'Chamber Sonic Fall', 16, false);
	objectPlayAnimation('hole', 'idle', false);		


	makeAnimatedLuaSprite('beam', 'chaos/Cbeam', -600, -1800);
    addAnimationByPrefix('beam', 'idle','Emerald Beam', 24, true);
	objectPlayAnimation('emeralds', 'idle', false);

	makeAnimatedLuaSprite('emeralds', 'chaos/Emeralds', -300, -500);
    addAnimationByPrefix('emeralds', 'idle','TheEmeralds', 24, true);
	objectPlayAnimation('emeralds', 'idle', true);
		
	makeLuaSprite('thing', 'chaos/CBG1', -2800, -1400);
	scaleObject('thing', 0.9, 0.9);	

	makeLuaSprite('pebles', 'chaos/pebles', -500, 800);
	setScrollFactor('pebles', 1, 1);
	scaleObject('pebles', 0.9, 0.9);

	
	addLuaSprite('CFloor', false);
	addLuaSprite('CWall', false);
	addLuaSprite('thing', false);
	addLuaSprite('beam', false);
	addLuaSprite('emeralds', false);
	addLuaSprite('hole', false);
	addLuaSprite('pebles', false);
		
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
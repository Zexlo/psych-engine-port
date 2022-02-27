function onCreate()

	makeLuaSprite('CWall', 'CWall', -800, -500);
	setScrollFactor('CWall', 0.9, 0.9);
	
	makeLuaSprite('CFloor', 'CFloor', -350, 300);
	setScrollFactor('CFloor', 1.2, 1.2);
	scaleObject('CFloor', 0.9, 0.9);
	
	makeAnimatedLuaSprite('porker', 'Porker Lewis', 1850, -500);
	scaleObject('porker', 0.7, 0.7);
	setScrollFactor('porker', 1.2, 1.2);
      	addAnimationByPrefix('porker', 'idle', 'PorkerFG', 40, true);
	objectPlayAnimation('porker', 'idle', true);

	makeAnimatedLuaSprite('emeralds', 'Emeralds', 400, 0);
    addAnimationByPrefix('emeralds', 'idle','TheEmeralds', 24, true);
	objectPlayAnimation('emeralds', 'idle', true);
	addLuaSprite('emeralds', true);

	makeLuaSprite('pebles', 'pebles', -100, 420);
	setScrollFactor('pebles', 0.9, 0.9);
	scaleObject('pebles', 0.9, 0.9);


	addLuaSprite('CWall', false);
	addLuaSprite('Exetrees', false);
          	addLuaSprite('CFloor', false);
          	addLuaSprite('pebles', false);
	addLuaSprite('porker', true);

		
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
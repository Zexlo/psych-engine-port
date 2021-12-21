function onCreate()

	makeLuaSprite('CWall', 'CWall', -800, -500);
	setScrollFactor('CWall', 0.9, 0.9);
	
	makeLuaSprite('CFloor', 'CFloor', -350, 300);
	setScrollFactor('CFloor', 1.2, 1.2);
	scaleObject('CFloor', 0.9, 0.9);
	
	makeAnimatedLuaSprite('anim', 'Porker Lewis', 1300, -1000);
	scaleObject('Porker Lewis', 0.7, 0.7);
      	addAnimationByPrefix('anim', 'idle', 'PorkerFG', 40, true);
	objectPlayAnimation('anim', 'PorkerFG', false);

	makeAnimatedLuaSprite('float', 'Emeralds', 400, 000);
      	addAnimationByPrefix('float', 'idle','TheEmeralds', 24, true);
	objectPlayAnimation('float', 'TheEmeralds', false);

	makeLuaSprite('pebles', 'pebles', -100, 420);
	setScrollFactor('pebles', 0.9, 0.9);
	scaleObject('pebles', 0.9, 0.9);


	addLuaSprite('CWall', false);
	addLuaSprite('Exetrees', false);
          	addLuaSprite('CFloor', false);
          	addLuaSprite('pebles', false);
	addLuaSprite('anim', true);
	addLuaSprite('float', true);

		
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
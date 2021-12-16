function onCreate()

	makeLuaSprite('skyX', 'skyX', -800, -500);
	setScrollFactor('skyX', 0.9, 0.9);
	
	makeLuaSprite('tree', 'tree', 900, -400);
	setScrollFactor('tree', 0.9, 0.9);
	scaleObject('tree', 0.7, 0.7);
	
	makeLuaSprite('tree', 'tree', 900, -400);
	setScrollFactor('tree', 0.9, 0.9);
	scaleObject('tree', 0.7, 0.7);
	
       makeLuaSprite('smflower', 'smflower', -100, -050);
	setScrollFactor('smflower', 0.9, 0.9);
	scaleObject('smflower', 0.7, 0.7);

makeLuaSprite('smflower2', 'smflower2', -1000, 200);
	setScrollFactor('smflower2', 0.9, 0.9);
	scaleObject('smflower2', 0.7, 0.7);


       makeLuaSprite('Hills2', 'Hills2', -500, 100);
	setScrollFactor('Hills2', 0.9, 0.9);
	scaleObject('Hills2', 1, 1);

	makeLuaSprite('Hills1', 'Hills1', -700, -600);
	setScrollFactor('Hills1', 0.9, 0.9);
	scaleObject('Hills1', 1.1, 1.1);

	makeLuaSprite('groundX', 'groundX', -800, 400);
	setScrollFactor('groundX', 0.9, 0.9);
	scaleObject('groundX', 1.1, 1.1);

         makeAnimatedLuaSprite('fanim', 'Weird', -300, 000);
       scaleObject('Weird', 0.7, 0.7);
	addAnimationByPrefix('fanim', 'idle', 'flower', 40, true);
	objectPlayAnimation('fanim', 'flower', false);


	addLuaSprite('skyX', false);
	addLuaSprite('Hills2', false);
	addLuaSprite('Hills1', false);
	addLuaSprite('groundX', false);
	addLuaSprite('fanim', false);
	addLuaSprite('smflower', false);
	addLuaSprite('smflower2', false)
	addLuaSprite('tree', false);
		
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
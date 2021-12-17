function onCreate()

	makeLuaSprite('SKY', 'SKY', -400, 200);
	setScrollFactor('SKY', 0.9, 0.9);
	scaleObject('frontgrass', 1.4, 1);

	
	makeLuaSprite('frontgrass', 'frontgrass', 300, 400);
	setScrollFactor('frontgrass', 0.9, 0.9);
	scaleObject('frontgrass', 0.7, 0.7);
		
       makeLuaSprite('EGGMAN', 'EGGMAN', -300, 300);
	setScrollFactor('EGGMAN', 0.9, 0.9);
	scaleObject('EGGMAN', 0.7, 0.7);
	
	makeLuaSprite('KNUCKLE', 'KNUCKLE', 600, 300);
	setScrollFactor('KNUCKLE', 0.9, 0.9);
	scaleObject('KNUCKLE', 0.7, 0.7);

	
	 makeLuaSprite('TAIL', 'TAIL', -400, 300);
	setScrollFactor('TAIL', 0.9, 0.9);
	scaleObject('TAIL', 0.7, 0.7);


	makeLuaSprite('FLOOR2', 'FLOOR2', -400, -050);
	setScrollFactor('FLOOR2', 0.9, 0.9);
	scaleObject('FLOOR2', 1.1, 1.1);

	makeLuaSprite('FLOOR1', 'FLOOR1', -400, 000);
	setScrollFactor('FLOOR1', 0.9, 1);
	scaleObject('FLOOR1', 1.1, 1.1);

       makeAnimatedLuaSprite('tails', 'TailsSpikeAnimated', -050, 400);
       setScrollFactor('TailsSpikeAnimated', 0.9, 0.9);
       addAnimationByPrefix('tails', 'idle', 'Tails Spike Animated', 24, true);
	objectPlayAnimation('tails', 'Tails Spike Animated', false);


	addLuaSprite('SKY', false);
	addLuaSprite('FLOOR2', false);
	addLuaSprite('FLOOR1', false);
	addLuaSprite('TailsSpikeAnimated', false);
	addLuaSprite('TAIL', false);
	addLuaSprite('EGGMAN', false);
       addLuaSprite('tails', false);
	addLuaSprite('KNUCKLE', false);
	addLuaSprite('frontgrass', true);

		
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
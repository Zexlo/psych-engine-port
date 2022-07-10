function onCreate()

	makeLuaSprite('SKY', 'tooslow/SKY', -400, 200);
	setScrollFactor('SKY', 0.9, 0.9);
	scaleObject('frontgrass', 1.4, 1);

	
	makeLuaSprite('frontgrass', 'tooslow/frontgrass', 300, 650);
	setScrollFactor('frontgrass', 0.9, 0.9);
	scaleObject('frontgrass', 0.7, 0.7);
		
       makeLuaSprite('EGGMAN', 'tooslow/EGGMAN', -300, 700);
	setScrollFactor('EGGMAN', 0.9, 0.9);
	scaleObject('EGGMAN', 0.7, 0.7);
	
	makeLuaSprite('KNUCKLE', 'tooslow/KNUCKLE', 1300, 800);
	setScrollFactor('KNUCKLE', 0.9, 0.9);
	scaleObject('KNUCKLE', 0.7, 0.7);

	
	 makeLuaSprite('TAIL', 'tooslow/TAIL', -360, 870);
	setScrollFactor('TAIL', 0.9, 0.9);
	scaleObject('TAIL', 0.7, 0.7);


	makeLuaSprite('FLOOR2', 'tooslow/FLOOR2', -400, 340);
	setScrollFactor('FLOOR2', 0.9, 0.9);
	scaleObject('FLOOR2', 1.1, 1.1);

	makeLuaSprite('FLOOR1', 'tooslow/FLOOR1', -400, 600);
	setScrollFactor('FLOOR1', 0.9, 1);
	scaleObject('FLOOR1', 1.1, 1.1);

       makeAnimatedLuaSprite('tails', 'tooslow/TailsSpikeAnimated', -150, 500);
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
	--addLuaSprite('frontgrass', true);

		
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
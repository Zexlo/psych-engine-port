function onCreate()

	makeLuaSprite('sonicFUNsky', 'sonicFUNsky', -800, -200);
	setScrollFactor('sonicFUNsky', 0.9, 0.9);
		
	makeLuaSprite('Boppers Front', 'Boppers Front', -400, -500);
	setScrollFactor('Boppers Front', 0.9, 0.9);
	scaleObject('Boppers Front', 1, 1);

       makeLuaSprite('Bush 1', 'Bush 1', -800, 300);
	setScrollFactor('Bush 1', 0.9, 0.9);
	scaleObject('Bush 1', 1, 1);
	
	makeLuaSprite('Bush 2', 'Bush 2', -800, 200);
	setScrollFactor('Bush 2', 0.9, 0.9);
	scaleObject('Bush 2', 1, 1);
	
	makeLuaSprite('grassm', 'grassm', -800, 400);
	setScrollFactor('grassm', 0.9, 0.9);
	scaleObject('grassm', 1.1, 1.1);
		
       makeAnimatedLuaSprite('Maj1', 'Majin FG1', 700, 600);
	addAnimationByPrefix('Maj1', 'idle', 'majin front bopper', 24, true);
	addLuaSprite('Maj1', true);
	objectPlayAnimation('Maj1', 'idle', false);
	
	 makeAnimatedLuaSprite('old', 'Majold', -100, -100);
	addAnimationByPrefix('old', 'idle', 'OLDIDLE', 24, true);
	objectPlayAnimation('old', 'idle', false);


       makeAnimatedLuaSprite('MajB', 'MajinBack', -800, -400);
	addAnimationByPrefix('MajB', 'idle', 'MajinBop2', 24, true);
	objectPlayAnimation('MajB', 'idle', false);
	
	makeAnimatedLuaSprite('MajF', 'MajinFront', -1200, -600);
	addAnimationByPrefix('MajF', 'idle', 'MajinBop1', 24, true);
	objectPlayAnimation('MajF', 'idle', false);


	addLuaSprite('sonicFUNsky', false);
	addLuaSprite('MajB', false)
	addLuaSprite('Bush 2', false);
	addLuaSprite('Majold', false);
	addLuaSprite('MajF', false);
	addLuaSprite('Bush 1', false);
	addLuaSprite('grassm', false);
	addLuaSprite('Majin FG1', true);
	addLuaSprite('Majin FG2', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
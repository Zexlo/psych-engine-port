function onCreate()

	makeLuaSprite('sonicFUNsky', 'endless/sonicFUNsky', -1000, -200);
	doTweenColor('sonicFUNsky', 'sonicFUNsky', 'FF0000', 0.1, 'linear');
	setScrollFactor('sonicFUNsky', 0.9, 0.9);
		
	makeLuaSprite('Boppers Front', 'endless/Boppers Front', -400, -300);
	doTweenColor('Boppers Front', 'Boppers Front', 'FF0000', 0.1, 'linear');
	setScrollFactor('Boppers Front', 0.9, 0.9);
	scaleObject('Boppers Front', 1, 1);

       makeLuaSprite('Bush 1', 'endless/Bush 1', -800, 400);
       doTweenColor('Bush 1', 'Bush 1', 'FF0000', 0.1, 'linear');
	setScrollFactor('Bush 1', 0.9, 0.9);
	scaleObject('Bush 1', 1, 1);
	
	makeLuaSprite('Bush 2', 'endless/Bush 2', -700, 340);
	doTweenColor('Bush 2', 'Bush 2', 'FF0000', 0.1, 'linear');
	setScrollFactor('Bush 2', 0.9, 0.9);
	scaleObject('Bush 2', 1, 1);
	
	makeLuaSprite('grassm', 'endless/grassm', -1200, 400);
	doTweenColor('grassm', 'grassm', 'FF0000', 0.1, 'linear');
	setScrollFactor('grassm', 0.9, 0.9);
	scaleObject('grassm', 1.1, 1.1);
		
       makeAnimatedLuaSprite('Maj1', 'endless/Majin FG1', 700, 600);
       doTweenColor('Maj1', 'Majin FG1', 'FF0000', 0.1, 'linear');
	addAnimationByPrefix('Maj1', 'idle', 'majin front bopper', 24, true);
	objectPlayAnimation('Maj1', 'idle', false);
	

       makeAnimatedLuaSprite('MajB', 'endless/MajinBack', -600, -400);
       doTweenColor('MajB', 'MajinBack', 'FF0000', 0.1, 'linear');
	addAnimationByPrefix('MajB', 'idle', 'MajinBop2', 24, true);
	objectPlayAnimation('MajB', 'idle', false);
	
	makeAnimatedLuaSprite('MajF', 'endless/MajinFront', -1000, -400);
	doTweenColor('MajF', 'Majin Front', 'FF0000', 0.1, 'linear');
	addAnimationByPrefix('MajF', 'idle', 'MajinBop1', 24, true);
	objectPlayAnimation('MajF', 'idle', false);

	addLuaSprite('sonicFUNsky', false);
	addLuaSprite('MajB', false)
	addLuaSprite('Bush 2', false);
	addLuaSprite('MajF', false);
	addLuaSprite('Bush 1', false);
	addLuaSprite('grassm', false);
	addLuaSprite('Majin FG2', false);
	addLuaSprite('Maj1', true);


	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
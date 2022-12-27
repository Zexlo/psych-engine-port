function onCreate()

	makeLuaSprite('sky', 'endless/sonicFUNsky', -1200, -200);	
	
    makeLuaSprite('Bush1', 'endless/Bush 1', -1200, 100);
	
	makeLuaSprite('Bush2', 'endless/Bush 2', -1200, -200);	
	
	makeLuaSprite('grassm', 'endless/grassm', -1200, 280);		
		
    makeAnimatedLuaSprite('Maj1', 'endless/Majin FG1', 405, 450);
	addAnimationByPrefix('Maj1', 'idle', 'majin front bopper', 24, true);
	objectPlayAnimation('Maj1', 'idle', false);		

       makeAnimatedLuaSprite('MajB', 'endless/MajinBack', -630, -550);
	addAnimationByPrefix('MajB', 'idle', 'MajinBop2', 24, true);
	objectPlayAnimation('MajB', 'idle', false);
	
	makeAnimatedLuaSprite('MajF', 'endless/MajinFront', -1000, -550);
	addAnimationByPrefix('MajF', 'idle', 'MajinBop1', 24, true);
	objectPlayAnimation('MajF', 'idle', false);

	addLuaSprite('sky', false);
	addLuaSprite('Bush2', false);
	addLuaSprite('MajB', false)	
	addLuaSprite('Bush1', false);
	addLuaSprite('MajF', false);	
	addLuaSprite('grassm', false);	
	addLuaSprite('Majin FG2', false);
	addLuaSprite('Maj1', true);

close()
end
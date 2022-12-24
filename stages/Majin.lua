allowCountdown = false;
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

	makeLuaSprite('black', 'black', 0, 0);
	addLuaSprite('black', true);
	makeLuaSprite('circle', 'StartScreens/CircleMajin', 1280, 0);
	addLuaSprite('circle', true);
	makeLuaSprite('text', 'StartScreens/TextMajin', -1280, 0);
	addLuaSprite('text', true);

	setObjectCamera('black', 'other');
	setObjectCamera('circle', 'other');
	setObjectCamera('text', 'other');

	startTime = 0.3;

	runTimer('flyin', startTime);
	runTimer('fadeout', startTime+2.5);
	runTimer('beginsong', startTime+2);
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'flyin' then
		doTweenX('circlefly', 'circle', 0, 1, 'linear');
		doTweenX('textfly', 'text', 0, 1, 'linear');
	end
	if tag == 'fadeout' then
		doTweenAlpha('fadeblack', 'black', 0, 2, 'sineOut');
		doTweenAlpha('fadecircle', 'circle', 0, 2, 'sineOut');
		doTweenAlpha('fadetext', 'text', 0, 2, 'sineOut')
	end
	if tag == 'beginsong' then
		allowCountdown = true;
		startCountdown();
		close(true)
	end
end

function onStartCountdown()
	if not allowCountdown then
		return Function_Stop;
	end	
	return Function_Continue;
end

function onUpdate(elasped)
doTweenColor('ColorTween', 'timeBar', '0E4E88', 1, 'linear')
end
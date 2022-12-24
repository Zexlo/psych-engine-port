allowCountdown = false;
function onCreate()
 
    makeLuaSprite('SunkBG', 'sunky/SunkBG', -100, 0);
	makeLuaSprite('stage', 'sunky/stage', -200, -130);
	makeLuaSprite('ratio', 'sunky/4_3ratio', 0, 0);
	makeLuaSprite('ball', 'sunky/ball', 100, -50);
	
	setObjectCamera('ratio', 'other');
	setObjectOrder('ratio', getObjectOrder('blackbox')-1)
	setScrollFactor('SunkBG', 0.9, 0.9);
	setScrollFactor('ball', 0.9, 0.9);

	scaleObject('ball', 0.9, 0.9); 
	
	addLuaSprite('SunkBG', false);
	addLuaSprite('stage', false);
	addLuaSprite('ratio', true);
	addLuaSprite('ball', false);	
	
	makeLuaSprite('black', 'black', 0, 0);
	addLuaSprite('black', true);
	makeLuaSprite('circle', 'StartScreens/Sunky', -1200, 0);
	addLuaSprite('circle', true);
	setObjectCamera('black', 'other');
	setObjectCamera('circle', 'other');
	setObjectCamera('text', 'other');
	
	startTime = 0.3;

	runTimer('flyin', startTime);
	runTimer('fadeout', startTime+1.5);
	runTimer('beginsong', startTime+4);	
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'flyin' then
		doTweenX('circlefly', 'circle', 100, 0.02, 'SineInOut');
        playSound('flatBONK', 1, 'thefunny');
		
	end
	if tag == 'fadeout' then
		doTweenAlpha('fadeblack', 'black', 0, 2, 'sineOut');
		doTweenAlpha('fadecircle', 'circle', 0, 2, 'sineOut');
		doTweenAlpha('fadetext', 'text', 0, 2, 'sineOut');
	end

	if tag == 'beginsong' then
		allowCountdown = true;
		startCountdown();
	end	
	
end

function onStartCountdown()
	if not allowCountdown then
		return Function_Stop;
	end
	return Function_Continue;
end
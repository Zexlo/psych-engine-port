allowCountdown = false;
videoDelay = false;

function onCreate()
	if isStoryMode and not seenCutscene then
		videoDelay = true;
	end

	addCharacterToList('Beast', 'dad');
	addCharacterToList('Eggman', 'dad');
	addCharacterToList('BOYFRIEND', 'bf');
	addCharacterToList('Knucks', 'gf');
	precacheImage('screenstatic');

	precacheImage('black');

	precacheImage('StartScreens/CircleTripleTrouble');
	precacheImage('StartScreens/TextTripleTrouble');

	makeLuaSprite('black', 'black', 0, 0);
	addLuaSprite('black', true);
	makeLuaSprite('circle', 'StartScreens/CircleTripleTrouble', 1280, 0);
	addLuaSprite('circle', true);
	makeLuaSprite('text', 'StartScreens/TextTripleTrouble', -1280, 0);
	addLuaSprite('text', true);

	setObjectCamera('black', 'hud');
	setObjectCamera('circle', 'hud');
	setObjectCamera('text', 'hud');

	startTime = 0.3;
	if videoDelay then 
		startTime = 9; -- cutscene delay
	end

	runTimer('flyin', startTime);
	runTimer('fadeout', startTime + 2);
	runTimer('beginsong', startTime + 3);
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
	end
end

function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('triple');
		return Function_Stop;
	end
	return Function_Continue;
end
function onUpdate(elasped)
doTweenColor('ColorTween', 'timeBar', '6C18C5', 1, 'linear')
end

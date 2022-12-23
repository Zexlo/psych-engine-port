allowCountdown = false;
videoDelay = false;

local allowCountdown = false;
function onStartCountdown()
	if not allowCountdown and isStoryMode then --Block the first countdown
	startVideo('Phase2');
	setProperty('inCutscene', false);		
	allowCountdown = true;
	return Function_Stop;
	end
	return Function_Continue;
end

function onCreate()
	if isStoryMode then
		videoDelay = true;
	end

	addCharacterToList('Beast', 'dad');
	addCharacterToList('Eggman', 'dad');
	addCharacterToList('BOYFRIEND', 'bf');
	addCharacterToList('Knucks', 'gf');
	precacheImage('screenstatic');

	--precacheImage('black');
	--precacheImage('StartScreens/CircleYouCantRun');
	--precacheImage('StartScreens/TextYouCantRun');

	makeLuaSprite('black', 'black', 0, 0);
	addLuaSprite('black', true);
	makeLuaSprite('circle', 'StartScreens/CircleYouCantRun', 1280, 200);
	addLuaSprite('circle', true);
	makeLuaSprite('text', 'StartScreens/TextYouCantRun', -1280, 250);
	addLuaSprite('text', true);

	setObjectCamera('black', 'hud');
	setObjectCamera('circle', 'hud');
	setObjectCamera('text', 'hud');

	startTime = 0.3;
	if videoDelay then 
		startTime = 2; -- cutscene delay
	end

	runTimer('flyin', startTime);
	runTimer('fadeout', startTime + 2);
	runTimer('beginsong', startTime + 1);
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'flyin' then
		doTweenX('circlefly', 'circle', 400, 1, 'linear');
		doTweenX('textfly', 'text', 250, 1, 'linear');
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
doTweenColor('ColorTween', 'timeBar', '4735C1', 1, 'linear')
end
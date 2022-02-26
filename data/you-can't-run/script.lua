local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('Phase2');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onCreate()
    addCharacterToList('P2Sonic', 'dad');
    addCharacterToList('SonicPixel', 'dad');
    addCharacterToList('BOYFRIEND', 'bf');
    addCharacterToList('Pixel_gf', 'gf');
    addCharacterToList('gf', 'gf');

    precacheImage('Greenhill');
    precacheImage('screenstatic');
    precacheImage('screenstaticBG');
    precacheImage('sonicJUMPSCARE');

    precacheImage('black');

	precacheImage('StartScreens/CircleYouCantRun');
	precacheImage('StartScreens/TextYouCantRun');

	makeLuaSprite('black', 'black', 0, 0);
	addLuaSprite('black', true);
	makeLuaSprite('circle', 'StartScreens/CircleYouCantRun', 1280, 0);
	addLuaSprite('circle', true);
	makeLuaSprite('text', 'StartScreens/TextYouCantRun', -1280, 0);
	addLuaSprite('text', true);

	setObjectCamera('black', 'hud');
	setObjectCamera('circle', 'hud');
	setObjectCamera('text', 'hud');
end

function onSongStart()
	runTimer('flyin', 0.8);
	runTimer('fadeout', 3);
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
end
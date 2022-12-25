function onCreate()
	precacheImage('characters/DeathScreenSonicExe')
	makeAnimatedLuaSprite('sonic', 'characters/DeathScreenSonicExe', 300, -200);
	addAnimationByPrefix('sonic', 'start', 'appear', 24, false);	
	addAnimationByPrefix('sonic', 'idle', 'deathLoopSonicExe', 24, true);		
	addAnimationByPrefix('sonic', 'end', 'deathConfirmSonicExe', 24, false);
	setProperty('sonic.antialiasing', true)
	makeLuaSprite('red', 'red', 0, 0);
	makeLuaSprite('yo', 'black', 0, 0);
	scaleObject('red', 2, 3);
	scaleObject('yo', 2, 3);
	addLuaSprite("yo", true)
	addLuaSprite("red", true)
	setProperty('red.alpha', 0)
	setProperty('yo.alpha', 0)
	setObjectCamera('red', 'other');
	setObjectCamera('yo', 'other');		
end

function onGameOverStart()
	setPropertyFromClass('flixel.FlxG', 'camera.zoom', 1.1)

	doTweenX('fixX', 'camFollow', 750, 0.2, 'sineOut')
	doTweenY('fixY', 'camFollow', 400, 0.2, 'sineOut')
	doTweenX('fixXbf', 'boyfriend', 560, 0.2, 'sineOut')
	doTweenY('fixYbf', 'boyfriend', 280, 0.2, 'sineOut')
    scaleObject('sonic', 1.5, 1.5);	
	addLuaSprite('sonic', false);	
	start = 1.8;
	
	runTimer('begin', start);
	objectPlayAnimation('sonic', 'start',false);
	end
	
function onTimerCompleted(tag, loops, loopsLeft)

	if tag == 'begin' then
	objectPlayAnimation('sonic', 'idle',true);
	doTweenX('fixXs', 'sonic', 320, 0.01, 'sineOut')
	doTweenY('fixYs', 'sonic', -140, 0.01, 'sineOut')	
	
	end
	end
	
function onGameOverConfirm(retry)
	setProperty('boyfriend.alpha', 0);
	objectPlayAnimation('sonic', 'end',true);
	setProperty('yo.alpha', 1)	
	doTweenAlpha('fadein','red', 1, 0.8, 'linear'); 	
	doTweenX('fixXs', 'sonic', 320, 0.01, 'sineOut')
	doTweenY('fixYs', 'sonic', -110, 0.01, 'sineOut')	
	end

function onTweenCompleted(tag)
	if tag == "fadein" then
doTweenAlpha('fadeout','red', 0, 0.8, 'linear');
end
end	
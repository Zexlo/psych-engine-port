function onGameOverStart()

if songName == 'Too slow' or songName == 'Cycles' or songName == 'Execution' then

exedeath()
else end
end
function exedeath()
     setPropertyFromClass('flixel.FlxG', 'camera.zoom', 1.1)

	doTweenX('fixX', 'camFollow', 750, 0.2, 'sineOut')
	doTweenY('fixY', 'camFollow', 400, 0.2, 'sineOut')
	doTweenX('fixXbf', 'boyfriend', 560, 0.2, 'sineOut')
	doTweenY('fixYbf', 'boyfriend', 280, 0.2, 'sineOut')

	makeAnimatedLuaSprite('sonic', 'characters/DeathScreenSonicExe', 300, -200);
	addAnimationByPrefix('sonic', 'start', 'appear', 24, false);	
	addAnimationByPrefix('sonic', 'idle', 'deathLoopSonicExe', 24, true);		
	addAnimationByPrefix('sonic', 'end', 'deathConfirmSonicExe', 24, false);
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
if songName == 'Too slow' or songName == 'Cycles' or songName == 'Execution' then
	setProperty('boyfriend.alpha', 0);
	objectPlayAnimation('sonic', 'end',true);
	doTweenX('fixXs', 'sonic', 320, 0.01, 'sineOut')
	doTweenY('fixYs', 'sonic', -110, 0.01, 'sineOut')	
	end
	end
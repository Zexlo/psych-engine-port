function onCreate()   
   setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-sonic-gameover'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'prey-death'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'prey-loop'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'prey-retry'); --put in mods/music/
end

function onGameOverStart()

	setObjectCamera('boyfriend', 'other');
setPropertyFromClass('flixel.FlxG', 'camera.zoom', 1.2)
	doTweenX('fixXbf', 'boyfriend', 700, 0.2, 'sineOut')
	doTweenY('fixYbf', 'boyfriend', 280, 0.2, 'sineOut')
end

function onGameOverConfirm(retry)
runTimer('endbf', 2)
end	

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'endbf' then
doTweenAlpha('byebye', 'boyfriend', 0, 1, 'linear')
end
end

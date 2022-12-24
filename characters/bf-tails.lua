function onCreate()

	addCharacterToList('starved_die', 'boyfriend');
    setPropertyFromClass('GameOverSubstate', 'characterName', 'starved_die'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'starved-death'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'starved-loop'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'starved-retry'); --put in mods/music/
	end
function onGameOverStart()
doTweenColor('unred1','boyfriend','FFFFFF', 0.2, 'linear')
makeLuaSprite('redBG','red',0,0)
setObjectCamera('redBG', 'other');
runTimer('fix',5)
setObjectCamera('boyfriend', 'other');
doTweenX('fixXbf', 'boyfriend', 100, 0.2, 'sineOut')
doTweenY('fixYbf', 'boyfriend', -200, 0.2, 'sineOut')
function onTimerCompleted(tag)
	if tag == 'fix' then
	doTweenX('fixX', 'boyfriend', -50, 0.1, 'SineInOut');
	doTweenY('fixY', 'boyfriend', -180, 0.1, 'SineInOut');
return Function_Continue;
		end
	end
end
 
 function onGameOverConfirm(retry) 
 addLuaSprite('redBG', true)
doTweenAlpha('fadeout', 'redBG', 0, 1, 'linear')
 end 
local width = 0
function onCreate()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-sonic-gameover'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'prey-death'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'prey-loop'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'prey-retry'); --put in mods/music/
	
	makeAnimatedLuaSprite('furnace','characters/Furnace_sheet',400 ,1750)
	addAnimationByPrefix('furnace', 'idle', 'Furnace idle', 24, true)
	setObjectOrder('furnace', getObjectOrder('floor1')-1)
	setObjectOrder('furnace', getObjectOrder('floor1')-1)
	scaleObject('furnace', 6, 6);
	setProperty('furnace.antialiasing', false)
	
	width = getProperty("bg1.width")
	stophide = false
	setProperty('dad.alpha', 0)
	setProperty('gf.alpha', 0)
	doTweenX("fixit", "gf", 4200, 2, "linear")
	setProperty('boyfriend.alpha', 0)
	setProperty('furnace.visible', false)		
	setProperty('camHUD.alpha', 0)
	runTimer('display', 12.8)
	runTimer('remove', 12.6)

	doTweenX("bg1Tween", "bg1", -width, 3, "linear")
	doTweenX("bg2Tween", "bg2", -20, 3, "linear")
end

function onTweenCompleted(tag)
	if tag == "bg1Tween" then
	setProperty("bg1.x", 0)
	setProperty("bg2.x", width-20)
		
	doTweenX("bg1Tween", "bg1", -width, 3, "linear")
	doTweenX("bg2Tween", "bg2", -20, 3, "linear")
end
end


function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'display' then
setProperty('dark.alpha', 0)
runTimer('start', 9)	
end
if tag == 'endbf' then
doTweenAlpha('byebye', 'boyfriend', 0, 1, 'linear')
end

if tag == 'remove' then
setProperty('cover.alpha', 0)
stophide = true
setProperty('gf.alpha', 1)
setProperty('dad.alpha', 1)
end

if tag == 'start' then
doTweenX('lol1', 'dad', 500, 1, 'linear');
doTweenAlpha('showHUD','camHUD', 1,1,'linear')
setProperty('iconP1.alpha',getProperty('iconP2.alpha'))
end

if tag == 'sound' then
playSound('Furnace',0.8)
end
end

function onUpdate(elasped) 
doTweenColor('ColorTween', 'timeBar', '6D7175', 1, 'linear')
if stophide == false then
 noteTweenAlpha('g', 0, 0, 0.001, 'linear');
 noteTweenAlpha('h', 1, 0, 0.001, 'linear');
 noteTweenAlpha('e', 2, 0, 0.001, 'linear');
 noteTweenAlpha('f', 3, 0, 0.001, 'linear');
 noteTweenAlpha('a', 4, 0, 0.001, 'linear');
 noteTweenAlpha('b', 5, 0, 0.001, 'linear');
 noteTweenAlpha('c', 6, 0, 0.001, 'linear');
 noteTweenAlpha('d', 7, 0, 0.001, 'linear'); 
 noteTweenAlpha('i', 7, 0, 0.001, 'linear'); 
end

if curBeat == 49 then
runTimer('sound', 1)
end

if curStep >= 1544 and curStep <= 1624 or curStep >= 3335 then
setTextColor('txt', '0000FF')
	
elseif curStep >= 1624 and curStep <=1800 then
	setTextColor('txt', 'FF0000')	
end

if curStep >=1790 then
doTweenColor('ColorTween', 'healthBar', '6C6CD8', 1, 'linear')
end

if curBeat >= 781 then
setProperty('furnace.visible', true)	
doTweenX('run', 'furnace', 3800, 2, 'sineOut')
end

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

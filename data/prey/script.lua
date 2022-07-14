local width = 0
function onCreate()
width = getProperty("bg1.width")

setProperty('dad.alpha', 0)
setProperty('boyfriend.alpha', 0)
setProperty('healthBarBG.visible', false)
setProperty('healthBar.visible', false)
setProperty('scoreTxt.visible', false)
setProperty('timeTxt.visible', false)
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)
setProperty('timeBar.visible', false)
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

if tag == 'remove' then
 noteTweenAlpha('g', 6, 0, 0.001, 'linear');
 noteTweenAlpha('h', 7, 0, 0.001, 'linear');
  noteTweenAlpha('e', 2, 0, 0.001, 'linear');
 noteTweenAlpha('f', 3, 0, 0.001, 'linear');
setProperty('cover.alpha', 0)
setProperty('dad.alpha', 1)
end

if tag == 'start' then
doTweenX('lol1', 'dad', 500, 1, 'linear');
setProperty('healthBarBG.visible', true)
setProperty('healthBar.visible', true)
setProperty('scoreTxt.visible', true)
setProperty('timeTxt.visible', true)
setProperty('iconP1.visible', true)
setProperty('iconP2.visible', true)
setProperty('timeBar.visible', true)
end
end

function onSongStart()
 noteTweenAlpha('a', 4, 0, 0.001, 'linear');
 noteTweenAlpha('b', 5, 0, 0.001, 'linear');
 noteTweenAlpha('c', 0, 0, 0.001, 'linear');
 noteTweenAlpha('d', 1, 0, 0.001, 'linear'); 
 end

function onMoveCamera(focus)
 if focus == 'dad' then
 noteTweenAlpha('hidea', 4, 1, 0.6, 'linear');
 noteTweenAlpha('hideb', 5, 1, 0.6, 'linear');
 noteTweenAlpha('hidec', 6, 1, 0.6, 'linear');
 noteTweenAlpha('hided', 7, 1, 0.6, 'linear');
noteTweenAlpha('ha', 0, 1, 0.6, 'linear');
 noteTweenAlpha('hb', 1, 1, 0.6, 'linear');
 noteTweenAlpha('hc', 2, 1, 0.6, 'linear');
 noteTweenAlpha('hd', 3, 1, 0.6, 'linear');
end
end
function onUpdate(elasped)
doTweenColor('ColorTween', 'timeBar', '6D7175', 1, 'linear')
end

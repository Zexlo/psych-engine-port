local width = 0
function onCreate()

	makeLuaSprite('black', 'black', 0, 0);
	addLuaSprite('black', true);
	makeLuaSprite('circle', 'StartScreens/Circleprey', 1280, 200);
	addLuaSprite('circle', true);
	makeLuaSprite('text', 'StartScreens/Textprey', -1280, 200);
	addLuaSprite('text', true);

   makeLuaSprite('credbox', 'box', 380, -1280);
    scaleObject('credbox', 1.2, 1.3);
	addLuaSprite('credbox', true);

       makeLuaText('credits', 'CREDITS', 730, 250, -1280)
       setTextSize('credits', 30)
       addLuaText('credits')
       makeLuaText('code', 'CODE', 730, 250, -1280)
         setTextSize('code', 30)
         addLuaText('code')
       makeLuaText('avery', 'Avery', 730, 250, -1280)
          setTextSize('avery', 30)
          addLuaText('avery')
       makeLuaText('cry', 'CryBit', 730, 250, -1280)
          setTextSize('cry', 30)
          addLuaText('cry')		  
       makeLuaText('art', 'ARTWORK', 730, 250, -1280)
          setTextSize('art', 30)
          addLuaText('art')
       makeLuaText('war', 'AnarkWarriors', 730, 250, -1280)
          setTextSize('war', 30)
          addLuaText('war')
       makeLuaText('music', 'MUSIC', 730, 250, -1280)
          setTextSize('music', 30)
          addLuaText('music')
       makeLuaText('dillo', 'Armydillo', 730, 250, -1280)
          setTextSize('dillo', 30)
          addLuaText('dillo')
       makeLuaText('chart', 'CHARTER', 730, 250, -1280)
          setTextSize('chart', 30)
          addLuaText('chart')
       makeLuaText('VR', 'VentiVR', 730, 250, -1280)
          setTextSize('VR', 30)
          addLuaText('VR')

	setObjectCamera('credbox', 'other');
	setObjectCamera('black', 'other');
	setObjectCamera('circle', 'other');
	setObjectCamera('text', 'other');
	setObjectCamera('credits', 'other');
	setObjectCamera('code', 'other');
	setObjectCamera('avery', 'other');
	setObjectCamera('cry', 'other');
	setObjectCamera('art', 'other');
	setObjectCamera('war', 'other');
	setObjectCamera('music', 'other');
	setObjectCamera('dillo', 'other');
	setObjectCamera('chart', 'other');
	setObjectCamera('VR', 'other');	

	startTime = 0.3;

	runTimer('flyin', startTime);
	runTimer('fadeout', startTime+2.5);
	runTimer('slidedown', startTime+15);
	runTimer('beginsong', startTime+2);
	runTimer('slideup', startTime+22);
	runTimer('display', 12.7);
	runTimer('remove', 12.6);
	
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
	setProperty('camHUD.alpha',0)

	doTweenX("bg1Tween", "bg1", -width, 3, "linear")
	doTweenX("bg2Tween", "bg2", -20, 3, "linear")
	
-- HUD shit	
if not downscroll then	
	makeLuaText('missTxt', misses, 0, 160, 535)	
	makeLuaText('scoreText', score, 0, 145, 635)		
	makeLuaSprite('MISSES','prey/misses',5 ,550)
	makeLuaSprite('TIME','prey/time',5 ,600)
	makeLuaSprite('SCORE','prey/score',5 ,650)

	doTweenY("movetime", "timeTxt", 585, 0.2, "linear")	
	doTweenX("movetime2", "timeTxt", -30, 0.2, "linear")
elseif downscroll then

	makeLuaText('missTxt', misses, 0, 160, 35)	
	makeLuaText('scoreText', score, 0, 145, 135)		
	makeLuaSprite('MISSES','prey/misses',5 ,50)
	makeLuaSprite('TIME','prey/time',5 ,100)
	makeLuaSprite('SCORE','prey/score',5 ,150)

	doTweenY("movetime", "timeTxt", 85, 0.2, "linear")	
	doTweenX("movetime2", "timeTxt", -30, 0.2, "linear")
end	
	
	scaleObject('MISSES',3,3);
	scaleObject('TIME',3,3);
	scaleObject('SCORE',3,3);

	setObjectCamera('MISSES', 'HUD');
	setObjectCamera('TIME', 'HUD');
	setObjectCamera('SCORE', 'HUD');
	setObjectCamera('missTxt', 'HUD');
	setObjectCamera('timeTxt', 'HUD');
	setObjectCamera('scoreText', 'HUD');	

    setTextSize('scoreText', 50)		
    setTextSize('missTxt', 50)	
    setTextSize('timeTxt', 50)
	
    setTextFont('missTxt', 'sonic.otf')
    setTextFont('timeTxt', 'sonic.otf')
    setTextFont('scoreText', 'sonic.otf')

	setObjectOrder('timeTxt', getObjectOrder('timeBar')+5)
	
	addLuaSprite('MISSES',true)
	addLuaSprite('TIME',true)
	addLuaSprite('SCORE',true)
	addLuaText('missTxt')
	addLuaText('timeText')	
	addLuaText('scoreText')

	setProperty('furnace.antialiasing', false)
	setProperty('MISSES.antialiasing', false)
	setProperty('TIME.antialiasing', false)
	setProperty('SCORE.antialiasing', false)
    setProperty('scoreTxt.y', 1000)	
-- end of HUD shit lmao

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
	if tag == 'slidedown' then
doTweenY('move', 'credits', 50, 1, 'linear');
doTweenY('move1', 'credbox', 0, 1, 'linear');
doTweenY('move2', 'code', 150, 1, 'linear');
doTweenY('move3', 'avery', 200, 1, 'linear');
doTweenY('move5', 'art', 270, 1, 'linear');
doTweenY('move4', 'cry', 320, 1, 'linear');
doTweenY('move6', 'war', 350, 1, 'linear');
doTweenY('move7', 'music', 400, 1, 'linear');
doTweenY('move8', 'dillo', 450, 1, 'linear');
doTweenY('move10', 'chart', 520, 1, 'linear');
doTweenY('move11', 'VR', 570, 1, 'linear');

end

      if tag == 'slideup' then
       doTweenY('move', 'credits', -1280, 1, 'linear');
     doTweenY('move1', 'credbox', -1280, 0.4, 'linear');         
       doTweenY('move2', 'code', -1280, 1, 'linear');
       doTweenY('move3', 'avery', -1280, 1, 'linear');          
       doTweenY('move5', 'art', -1280, 1, 'linear');
       doTweenY('move4', 'cry', -1280, 1, 'linear');                 
       doTweenY('move6', 'war', -1280, 1, 'linear');
     doTweenY('move7', 'music', -1280, 1, 'linear');
     doTweenY('move8', 'dillo', -1280, 1, 'linear');
     doTweenY('move10', 'chart', -1280, 1, 'linear');
     doTweenY('move11', 'VR', -1280, 1, 'linear');

       end

	if tag == 'flyin' then
		doTweenX('circlefly', 'circle', 400, 1, 'linear');
		doTweenX('textfly', 'text', 400, 1, 'linear');
	end
	if tag == 'fadeout' then
		doTweenAlpha('fadeblack', 'black', 0, 2, 'sineOut');
		doTweenAlpha('fadecircle', 'circle', 0, 2, 'sineOut');
		doTweenAlpha('fadetext', 'text', 0, 2, 'sineOut')
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
-- more HUD shit
    setTextString('scoreText', score)
    setTextString('missTxt', misses)
	setProperty('MISSES.alpha',getProperty('timeTxt.alpha'))
	setProperty('SCORE.alpha',getProperty('timeTxt.alpha'))	
	setProperty('TIME.alpha',getProperty('timeTxt.alpha'))	
	setProperty('missTxt.alpha',getProperty('timeTxt.alpha'))
	setProperty('scoreText.alpha',getProperty('timeTxt.alpha'))
	setProperty('MISSES.alpha',getProperty('timeTxt.visible'))
	setProperty('SCORE.alpha',getProperty('timeTxt.visible'))	
	setProperty('TIME.alpha',getProperty('timeTxt.visible'))	
	setProperty('missTxt.alpha',getProperty('timeTxt.visible'))
	setProperty('scoreText.alpha',getProperty('timeTxt.visible'))
	setProperty('timeBar.alpha', 0)
	setProperty('timeBarBG.alpha', 0)	
	
-- end of more HUD shit lolmao
	
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

if curBeat >= 31.6 and curBeat <= 32 then
doTweenZoom('wee', 'camGame', 1.5, 0.1, 'easein');
end

if curBeat >= 32 and curBeat <= 33 then
doTweenZoom('woo', 'camGame', 0.8, 0.2, 'easein');
end

end

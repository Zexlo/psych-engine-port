function onCreate()
	precacheImage('sonicJUMPSCARE');

    makeLuaSprite('credbox', 'box', 380, -1280);
    scaleObject('credbox', 1.2, 1.3);
	addLuaSprite('credbox', true);
	
       makeLuaText('credits', 'CREDITS', 730, 250, -1280)
       setTextSize('credits', 30)
       addLuaText('credits')
       makeLuaText('code', 'CODE', 730, 250, -1280)
         setTextSize('code', 30)
         addLuaText('code')
       makeLuaText('jakie', 'Jackie.exe', 730, 250, -1280)
          setTextSize('jakie', 30)
          addLuaText('jakie')
       makeLuaText('art', 'ARTWORK', 730, 250, -1280)
          setTextSize('art', 30)
          addLuaText('art')
       makeLuaText('bun', 'Cherribun', 730, 250, -1280)
          setTextSize('bun', 30)
          addLuaText('bun')
       makeLuaText('co', 'Cogaming', 730, 250, -1280)
          setTextSize('co', 30)
          addLuaText('co')
       makeLuaText('music', 'MUSIC', 730, 250, -1280)
          setTextSize('music', 30)
          addLuaText('music')
       makeLuaText('mar', 'MarStarBro', 730, 250, -1280)
          setTextSize('mar', 30)
          addLuaText('mar')
       makeLuaText('sas', 'Saster', 730, 250, -1280)
          setTextSize('sas', 30)
          addLuaText('sas')
       makeLuaText('chart', 'CHARTER', 730, 250, -1280)
          setTextSize('chart', 30)
          addLuaText('chart')
       makeLuaText('wild', 'Wilde', 730, 250, -1280)
          setTextSize('wild', 30)
          addLuaText('wild')
          
       
	setObjectCamera('credbox', 'hud');

	startTime = 0.3;

	runTimer('slidedown', startTime+3);
	runTimer('beginsong', startTime+2);
	runTimer('slideup', startTime+9);
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'slidedown' then
doTweenY('move', 'credits', 50, 1, 'linear');
doTweenY('move1', 'credbox', 0, 1, 'linear');
doTweenY('move2', 'code', 150, 1, 'linear');
doTweenY('move3', 'jakie', 200, 1, 'linear');
doTweenY('move4', 'art', 250, 1, 'linear');
doTweenY('move5', 'bun', 290, 1, 'linear');
doTweenY('move6', 'co', 320, 1, 'linear');
doTweenY('move7', 'music', 370, 1, 'linear');
doTweenY('move8', 'mar', 410, 1, 'linear');
doTweenY('move10', 'sas', 440, 1, 'linear');
doTweenY('move11', 'chart', 490, 1, 'linear');
doTweenY('move12', 'wild', 530, 1, 'linear');

end
       if tag == 'slideup' then
       doTweenY('move', 'credits', -1280, 1, 'linear');
     doTweenY('move1', 'credbox', -1280, 0.4, 'linear');         
       doTweenY('move2', 'code', -1280, 1, 'linear');
       doTweenY('move3', 'jakie', -1280, 1, 'linear');          
       doTweenY('move4', 'art', -1280, 1, 'linear');
       doTweenY('move5', 'bun', -1280, 1, 'linear');                 
       doTweenY('move6', 'co', -1280, 1, 'linear');
     doTweenY('move7', 'music', -1280, 1, 'linear');
     doTweenY('move8', 'mar', -1280, 1, 'linear');
     doTweenY('move10', 'sas', -1280, 1, 'linear');
     doTweenY('move11', 'chart', -1280, 1, 'linear');
     doTweenY('move12', 'wild', -1280, 1, 'linear');

       end
end

function onUpdate(elasped)
doTweenColor('ColorTween', 'timeBar', '166DBB', 1, 'linear')
	
	if curBeat >= 190 and curBeat <=198 or curStep >= 1306 and curStep <=1432 then
doTweenZoom('wee', 'camGame', 1.3, 0.5, 'linear');
else
end
if curStep >= 364 then
setTextColor('txt', 'FF0000')
end
end

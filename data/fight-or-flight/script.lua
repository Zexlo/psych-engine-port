local bfx = 200;
local bfy = 0;
local zoomshit = 0;

	allowCountdown = false;
function onCreate()		
    doTweenAngle('move1', 'healthBar', 90, 0.2, 'SineInOut');
    doTweenY('move2', 'healthBar',350 , 0.2, 'SineInOut');
	doTweenX('move3', 'healthBar',800 , 0.2, 'SineInOut');
    doTweenY('scale', 'healthBar.scale', 1, 1, 'elasticInOut');

	makeLuaSprite('black', 'black', 0, 0);
	addLuaSprite('black', true);
	makeLuaSprite('circle', 'StartScreens/CircleFight', 1280, 200);
	addLuaSprite('circle', true);
	makeLuaSprite('text', 'StartScreens/TextFight', -1280, 200);
	addLuaSprite('text', true);

	setObjectCamera('black', 'other');
	setObjectCamera('circle', 'other');
	setObjectCamera('text', 'other');

	startTime = 0.3;

	runTimer('flyin', startTime);
	runTimer('fadeout', startTime+1.5);
	runTimer('beginsong', startTime+1);
end

function onCreatePost()
	setObjectOrder('fear', getObjectOrder('meter')+1)
	end
	

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'flyin' then
		doTweenX('circlefly', 'circle', 400, 0.8, 'SineInOut');
		doTweenX('textfly', 'text', 400, 0.8, 'SineInOut');
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
	if not allowCountdown then
		return Function_Stop;		
	end
	return Function_Continue;
end
  
  
function onMoveCamera(focus)
    if focus == 'dad' then
        setProperty('defaultCamZoom', 1.25)
    elseif focus == 'boyfriend' then
        setProperty('defaultCamZoom', 0.85)
    end
end

function onUpdate()	
    zoomshit = (getProperty('camGame.zoom')/0.75);
    setCharacterX('boyfriend',bfx*zoomshit)
    setCharacterY('boyfriend',bfy*zoomshit)
    setProperty('boyfriend.scale.x',zoomshit)
    setProperty('boyfriend.scale.y',zoomshit)
end

function onUpdate(elapsed)
	doTweenColor('ColorTween', 'timeBar', 'FF0000', 1, 'linear')

	for i = 0,3 do
	noteTweenX(i, i,-1000, 0.2, 'linear')
end
	
if curBeat >= 294 and curBeat <=499 then
	doTweenAlpha('bye1', 'room', 0, 1, 'sineOut')
	doTweenAlpha('bye2', 'tower', 0, 1, 'sineOut')
	doTweenAlpha('bye3', 'city', 0, 1, 'sineOut')
	doTweenColor('red1','boyfriend','FF0000', 1, 'linear')
	doTweenColor('red2','sonicdead','FF0000', 1, 'linear')
elseif curBeat >=499 then
	doTweenAlpha('hiroom', 'room', 1, 1, 'sineOut')
	doTweenAlpha('hiroom2', 'tower', 1, 1, 'sineOut')
	doTweenAlpha('hiroom3', 'city', 1, 1, 'sineOut')
	doTweenColor('red1','boyfriend','EEEEEE', 1, 'linear')
	doTweenColor('red2','sonicdead','EEEEEE', 1, 'linear')
end

if curStep >= 2176 then
	setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
	setProperty('vocals.volume', 0)
end




function onUpdatePost()	
    setProperty('iconP1.y', 550)
    setProperty('iconP2.y', 0)
    setProperty('iconP1.x', 1020)
    setProperty('iconP2.x', 1020)
	for i = 4,7 do	
		noteTweenAlpha('alphafix'..i, i,0.6, 0.2, 'linear')	
		end
	end
end
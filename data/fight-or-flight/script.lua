local bfx = 200;
local bfy = 0;
local zoomshit = 0;


	allowCountdown = false;
function onCreate()

	addCharacterToList('starved_die', 'bf');
    setPropertyFromClass('GameOverSubstate', 'characterName', 'starved_die'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'starved-death'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'starved-loop'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'starved-retry'); --put in mods/music/

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
setTextString('scoreTxt','Sacrifices: '..getProperty('songMisses') ..' | Accuracy: '..(string.sub(getProperty('ratingPercent')* 100,0,5)).. '% ['..getProperty('ratingFC')..']')	
    zoomshit = (getProperty('camGame.zoom')/0.75);
    setCharacterX('boyfriend',bfx*zoomshit)
    setCharacterY('boyfriend',bfy*zoomshit)
    setProperty('boyfriend.scale.x',zoomshit)
    setProperty('boyfriend.scale.y',zoomshit)
end

function onUpdate(elapsed)
	doTweenColor('ColorTween', 'timeBar', 'FF0000', 1, 'linear')
	
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
	doTweenColor('unred1','boyfriend','FFFFFF', 1, 'linear')
	doTweenColor('unred2','sonicdead','FFFFFF', 1, 'linear')
end




function onUpdatePost(elapsed)
    setProperty('iconP1.y', 550)
    setProperty('iconP2.y', 0)
    setProperty('iconP1.x', 1020)
    setProperty('iconP2.x', 1020)
    noteTweenX('play0', 4, 415, 0.01, 'SineInOut')
	noteTweenX('play1', 5, 525, 0.01, 'SineInOut')
	noteTweenX('play2', 6, 635, 0.01, 'SineInOut')
	noteTweenX('play3', 7, 745, 0.01, 'SineInOut')
    noteTweenY('play4', 0, 800, 0.01, 'SineInOut')
	noteTweenY('play5', 1, 800, 0.01, 'SineInOut')
	noteTweenY('play6', 2, 800, 0.01, 'SineInOut')
	noteTweenY('play7', 3, 800, 0.01, 'SineInOut')	

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
 

	end
end

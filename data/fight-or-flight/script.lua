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
      doTweenX('move3', 'healthBar',900 , 0.2, 'SineInOut');
     doTweenY('scale', 'healthBar.scale', 1.2, 0.2, 'elasticInOut')          

precacheImage('black');

	precacheImage('StartScreens/CircleFight');
	precacheImage('StartScreens/TextFight');

	makeLuaSprite('black', 'black', 0, 0);
	addLuaSprite('black', true);
	makeLuaSprite('circle', 'StartScreens/CircleFight', 1280, 200);
	addLuaSprite('circle', true);
	makeLuaSprite('text', 'StartScreens/TextFight', -1280, 200);
	addLuaSprite('text', true);

	setObjectCamera('black', 'hud');
	setObjectCamera('circle', 'hud');
	setObjectCamera('text', 'hud');

	startTime = 0.3;

	runTimer('flyin', startTime);
	runTimer('fadeout', startTime+1.5);
	runTimer('beginsong', startTime+1);
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
    noteTweenAlpha('hidea', 0, 0, 0.001, 'SineInOut');
    noteTweenAlpha('hideb', 1, 0, 0.001, 'SineInOut');
    noteTweenAlpha('hidec', 2, 0, 0.001, 'SineInOut');
    noteTweenAlpha('hided', 3, 0, 0.001, 'SineInOut');
    noteTweenX('play0', 4, 415, 0.01, 'SineInOut')
	noteTweenX('play1', 5, 525, 0.01, 'SineInOut')
	noteTweenX('play2', 6, 635, 0.01, 'SineInOut')
	noteTweenX('play3', 7, 745, 0.01, 'SineInOut')
    noteTweenAlpha('hidee', 3, 0, 0.001, 'expoInOut');

function onUpdatePost(elapsed)
    setProperty('iconP1.alpha', 1)
    setProperty('iconP2.alpha', 1)
    setProperty('iconP1.y', 550)
    setProperty('iconP2.y', 0)
    setProperty('iconP1.x', 1120)
    setProperty('iconP2.x', 1120)

function onGameOverStart()
start = 5;

runTimer('fix', start);
doTweenY('setle', 'boyfriend', -180, 0.1, 'SineInOut');
setObjectCamera('boyfriend', 'hud');

function onTimerCompleted(tag)
	if tag == 'fix' then
doTweenX('fixX', 'boyfriend', -50, 0.1, 'SineInOut');
doTweenY('fixY', 'boyfriend', -200, 0.1, 'SineInOut');
return Function_Continue;
 end
 end
 end
 
 function onGameOverConfirm(retry)
 doTweenAlpha('fadeout', 'boyfriend', 0, 1.2, 'linear')
 end
 
 function onTweenCompleted(tag)		
if tag == 'fadeout' then
		restartSong(true)
	end
	end
	end
	end

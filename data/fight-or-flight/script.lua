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

   precacheImage('black');

	precacheImage('StartScreens/CircleMajin');
	precacheImage('StartScreens/TextMajin');

	makeLuaSprite('black', 'black', 0, 0);
	addLuaSprite('black', true);
	makeLuaSprite('circle', 'StartScreens/CircleMajin', 1280, 0);
	addLuaSprite('circle', true);
	makeLuaSprite('text', 'StartScreens/TextMajin', -1280, 0);
	addLuaSprite('text', true);

	setObjectCamera('black', 'hud');
	setObjectCamera('circle', 'hud');
	setObjectCamera('text', 'hud');

	startTime = 0.3;

	runTimer('flyin', startTime);
	runTimer('fadeout', startTime+2.5);
	runTimer('beginsong', startTime+2);

end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'flyin' then
		doTweenX('circlefly', 'circle', 0, 1, 'linear');
		doTweenX('textfly', 'text', 0, 1, 'linear');
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
    if getSongPosition() >= 1000 then
        -- do nothing
    else
        --debugPrint('in');
        noteTweenAlpha('hidea', 0, 0, 0.001, 'linear');
        --debugPrint('?');
        noteTweenAlpha('hideb', 1, 0, 0.001, 'linear');
        noteTweenAlpha('hidec', 2, 0, 0.001, 'linear');
        --debugPrint('here');
        noteTweenAlpha('hided', 3, 0, 0.001, 'linear');
        --debugPrint('there');
    end
    end
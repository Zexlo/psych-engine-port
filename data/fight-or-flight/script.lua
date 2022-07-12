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
      doTweenAngle('move1', 'healthBar', 90, 0.2, 'linear');
        doTweenY('move2', 'healthBar',350 , 0.2, 'linear');
      doTweenX('move3', 'healthBar',900 , 0.2, 'linear');
     doTweenY('scale', 'healthBar.scale', 1.2, 0.2, 'elasticInOut')      
      setProperty('iconP1.visible', false)
      setProperty('iconP2.visible', false)    
  
  
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
        noteTweenAlpha('hidea', 0, 0, 0.001, 'linear');
        noteTweenAlpha('hideb', 1, 0, 0.001, 'linear');
        noteTweenAlpha('hidec', 2, 0, 0.001, 'linear');
        noteTweenAlpha('hided', 3, 0, 0.001, 'linear');
       noteTweenX('play0', 4, 415, 0.1, 'quartInOut')
	noteTweenX('play1', 5, 525, 0.1, 'quartInOut')
	noteTweenX('play2', 6, 635, 0.1, 'quartInOut')
	noteTweenX('play3', 7, 745, 0.1, 'quartInOut')
     noteTweenAlpha('hidee', 3, 0, 0.001, 'linear');
	
 
        --debugPrint('there');
    end
    end
    end
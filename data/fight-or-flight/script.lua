local bfx = 200;
local bfy = 0;
local zoomshit = 0;

function onCreate()
	addCharacterToList('starved_die', 'dad');
	
       setPropertyFromClass('GameOverSubstate', 'characterName', 'starved_die'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'starved-death'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'starved-loop'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'starved-retry'); --put in mods/music/

end

function onMoveCamera(focus)
    if focus == 'dad' then
        setProperty('defaultCamZoom', 1)
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
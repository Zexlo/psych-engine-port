function onCreate()
    -- change "sprite_name" to whatever you want, change "path/to/sprite" to the 
    -- path of the image file
    -- change "animation_alias" to whatever you want, change "Animation name in XML"
    -- to the name of the animation... wait for it... in the XML file
    -- copy from here...
    makeAnimatedLuaSprite('JUMPSCARE', 'sonicJUMPSCARE', 0, 0); -- "234" = sprite X pos, "567" = sprite Y pos
    addAnimationByPrefix('JUMPSCARE', 'idle', 'sonicSPOOK', 24, false); -- "24" = framerate of animation, "false" = does the animation loop
    setProperty('JUMPSCARE.alpha', 0);
    --playAnim('JUMPSCARE', 'idle');
    addLuaSprite('JUMPSCARE', true); -- false = add behind characters, true = add over characters
    setObjectCamera('JUMPSCARE', 'hud'); -- shows up in the camera center as he should
end

function onEvent(name, value1, value2)
    -- trigger on event called "Event Name"
    -- change "Event Name" to whatever the event will be called
    if name == 'Jumpscare' then
startTime = 1.2;

	runTimer('jump', startTime);
        setProperty('JUMPSCARE.alpha', 1);
        playAnim('JUMPSCARE', 'idle',false); -- play the graphic's animation
        playSound('Jumpscare');
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'jump' then
removeLuaSprite('JUMPSCARE', true);
close(true);
end
end
function onCreate()
    -- change "sprite_name" to whatever you want, 
    -- change "animation_alias" to whatever you want, change "Animation name in XML"
    -- to the name of the animation... wait for it... in the XML file
    -- copy from here...
    makeLuaSprite('Hillzone', 'Greenhill', -250, -100); -- X,Y pos
    setScrollFactor('Greenhill', 0.9, 0.9);
    -- addAnimationByPrefix('Hillzone', 'idle', 'sonicSPOOK', 24, false); -- "24" = framerate of animation, "false" = does the animation loop
    setProperty('Hillzone.alpha', 0);
    --objectPlayAnimation('Hillzone', 'idle');
    addLuaSprite('Hillzone', false); -- false = add behind characters, true = add over characters
   end

function onEvent(name, value1, value2)
    -- trigger on event called "Event Name"
    -- change "Event Name" to whatever the event will be called
    if name == 'Hillzone' then
        setProperty('Hillzone.alpha', 255);
             playSound('file');
    end
end
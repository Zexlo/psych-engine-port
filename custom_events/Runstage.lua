function onCreate()
 precacheImage(Greenhill);
    -- change "sprite_name" to whatever you want, 
    -- change "animation_alias" to whatever you want, change "Animation name in XML"
    -- to the name of the animation... wait for it... in the XML file
    -- copy from here...
    
    makeLuaSprite('Runstage', 'P2sky', -450, -100); -- X,Y pos
    setScrollFactor('P2sky', 0.9, 0.9);
    
    makeLuaSprite('RunG', 'P2ground', -450, -100); -- X,Y pos
    setScrollFactor('P2ground', 0.9, 0.9);
    
    makeLuaSprite('RunT', 'P2trees', -450, -100); -- X,Y pos
    setScrollFactor('P2trees', 0.9, 0.9);

    -- addAnimationByPrefix('Runstage', 'idle', 'sonicSPOOK', 24, false); -- "24" = framerate of animation, "false" = does the animation loop
    setProperty('Runstage.alpha', 0);
    setProperty('RunG.alpha', 0);
   setProperty('RunT.alpha', 0);

    --objectPlayAnimation('Runstage', 'idle');
    addLuaSprite('Runstage', false); -- false = add behind characters, true = add over characters
   addLuaSprite('RunT', false); -- false = add behind characters, true = add over characters
   addLuaSprite('RunG', false); -- false = add behind characters, true = add over characters
   end



function onEvent(name, value1, value2)
    -- trigger on event called "Event Name"
    -- change "Event Name" to whatever the event will be called
    if name == 'Runstage' then
        setProperty('Runstage.alpha', 255);
         setProperty('RunT.alpha', 255);
          setProperty('RunG.alpha', 255);
        playSound('file');
    end
end
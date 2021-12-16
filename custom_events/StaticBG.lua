function onCreate()
      makeAnimatedLuaSprite('StaticBG', 'screenstaticBG', -350, 060); -- "234" = sprite X pos, "567" = sprite Y pos
    addAnimationByPrefix('StaticBG', 'move', 'STATIC', 24, false); -- "20" = framerate of animation, "false" = does the animation loop
       setProperty('Static.alpha', 0);
    setScrollFactor('StaticBG', 0.9, 0.9);
    scaleObject('StaticBG', 1.8, 1.8);
    
     addLuaSprite('StaticBG', false); -- false = add behind characters, true = add over characters
  end
    
  function onEvent(name, value1, value2)
    
        if name == 'StaticBG' then
        setProperty('StaticBG.alpha', 255);
        objectPlayAnimation('StaticBG', 'move'); -- play the graphic's animation
            end
end
function onCreate()
      makeLuaSprite('why', 'simplejump', -250, -100); -- X,Y pos
     setScrollFactor('simplejump', 0.9, 0.9);
     setProperty('why.alpha', 0);
     addLuaSprite('why', false); -- false = add behind characters, true = add over characters
end

function onEvent(name, value1, value2)
       if name == 'jump' then
        setProperty('why.alpha', 1);
        end
end
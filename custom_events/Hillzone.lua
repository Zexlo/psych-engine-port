function onCreate()

    makeLuaSprite('Hillzone', 'Greenhill', -1000, -110); -- X,Y pos
    setProperty('Hillzone.alpha', 0);
    addLuaSprite('Hillzone', false);
   end

function onEvent(name, value1, value2)

    if name == 'Hillzone' then	
    setProperty('Hillzone.alpha', 1);
        end

    if name == 'Runstage' then
		
        setProperty('Hillzone.alpha', 0);
        end	
end

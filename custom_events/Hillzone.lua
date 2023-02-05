function onCreate()

    makeLuaSprite('Hillzone', 'Greenhill', -1000, -110); -- X,Y pos
    setProperty('Hillzone.alpha', 0);
    addLuaSprite('Hillzone', false);
   end

function onEvent(name, value1, value2)
    if name == 'Hillzone' then

    if value1 == 'show' then	
    setProperty('Hillzone.alpha', 1);

    elseif value1 == 'hide' then
    setProperty('Hillzone.alpha', 0);
        end	
    end
end
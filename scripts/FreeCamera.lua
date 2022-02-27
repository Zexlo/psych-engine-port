function onEvent(tag, val1, val2)
    if tag == "Enable Free Camera" then
        freeCam = true;
    end
    if tag == "Disable Free Camera" then
        freeCam = false;
    end
end

freeCam = true;

curX = 0;
curY = 0;

function onUpdate(elapsed)
    if freeCam then
        incAmount = 5;
        if getPropertyFromClass('flixel.FlxG', 'keys.pressed.SHIFT') then
            incAmount = 15;
        end
        if getPropertyFromClass('flixel.FlxG', 'keys.pressed.J') then
            curX = curX - incAmount;
        end 
        if getPropertyFromClass('flixel.FlxG', 'keys.pressed.L') then
            curX = curX + incAmount;
        end
        if getPropertyFromClass('flixel.FlxG', 'keys.pressed.I') then
            curY = curY - incAmount;
        end
        if getPropertyFromClass('flixel.FlxG', 'keys.pressed.K') then
            curY = curY + incAmount;
        end

        setProperty('camFollowPos.x', curX);
        setProperty('camFollowPos.y', curY);
    end
    setProperty('health', 2);
end
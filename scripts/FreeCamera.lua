FREE_CAM_TEXT = 'Free Camera Enabled';
LOCKED_CAM_TEXT = 'Free Camera Locked';
CONTROL_TEXT = 'I, J, K, L to move\nHold Shift to move faster\nPress 1 to release camera\nPress 2 to lock camera';
ON = true;
OFF = false;

-----------

freeCam = false;

curX = 0;
curY = 0;

textVisible = false;

function onCreate()
    makeLuaText('freeCamLuaText', FREE_CAM_TEXT, 1280, 0, 0);
    setTextSize('freeCamLuaText', 20);
    setTextAlignment('freeCamLuaText', 'center');
    setObjectCamera('freeCamLuaText', 'hud');

    makeLuaText('controlLuaText', CONTROL_TEXT, 1280, 0, 20);
    setTextSize('controlLuaText', 20);
    setTextAlignment('controlLuaText', 'left');
    setObjectCamera('controlLuaText', 'hud');

    makeLuaText('lockedCamLuaText', LOCKED_CAM_TEXT, 1280, 0, 0);
    setTextSize('lockedCamLuaText', 20);
    setTextAlignment('lockedCamLuaText', 'center');
    setObjectCamera('lockedCamLuaText', 'hud');
end

function onUpdate(elapsed)
    if getKey('one') then -- toggle free cam, releasing to game
        freeCam = not freeCam; -- toggle
        textToggle();
        if not freeCam then
            setProperty('isCameraOnForcedPos', false); -- release camera
        end
    elseif getKey('two') then -- toggle free cam, staying in place
        freeCam = not freeCam; -- toggle
        textToggle();
        if not freeCam then
            addLuaText('lockedCamLuaText');
        else
            removeLuaText('lockedCamLuaText', false);
        end
    end

    if freeCam then
        incAmount = 15;
        if getKey('shift', true) then
            incAmount = 30; -- nyoom
        end

        if getKey('j', true) then
            curX = curX - incAmount;
        elseif getKey('L', true) then
            curX = curX + incAmount;
        end

        if getKey('i', true) then
            curY = curY - incAmount;
        elseif getKey('k', true) then
            curY = curY + incAmount;
        end

        triggerEvent('Camera Follow Pos', curX, curY); -- has the annoying lerp of in-game camera, but it's more stable than moving cam by vars so eh
    else
        curX = getProperty('camFollowPos.x'); -- save coords
        curY = getProperty('camFollowPos.y');
    end
    -- setProperty('health', 2); -- unstoppable force meets immovable object
end

-- make it easier to get status of key
function getKey(key, pressing)
    key = string.upper(key);

    if key == nil then
        debugPrint('getKey has no key.');
        return false;
    elseif pressing == nil then
        pressing = false; -- "pressing" = is the key being pressed right now, "pressed" = was the key last pressed 
    end

    if pressing then
        return getPropertyFromClass('flixel.FlxG', 'keys.pressed.' .. key); -- clever concatenation
    else
        return getPropertyFromClass('flixel.FlxG', 'keys.justPressed.' .. key);
    end

    return false; -- if nothing else idk
end

-- setting text visibility 
function textToggle(set)
    if set == nil then
        textVisible = not textVisible; -- toggle
    else
        textVisible = set; -- force
    end

    if textVisible then
        addLuaText('freeCamLuaText');
        addLuaText('controlLuaText');
    else
        removeLuaText('freeCamLuaText', false); -- false, don't destroy the text
        removeLuaText('controlLuaText', false);
    end

    return set; -- idk if this needs to actually return or not so 💀
end
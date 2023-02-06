noteSpinSpeed = 0.15;

function onEvent(name, value1, value2)
    if name == 'Note-Spin' then
    if value1  == '' then
        value1 = noteSpinSpeed
    end        
        for i=0,9 do -- for every note
            noteTweenAngle(i..'b', i, -360, 0.001, 'linear'); -- set to -360 to spin clockwise
            noteTweenAngle(i, i, 0, value1, 'expoOut'); -- reset to 0 to spin!! expo out gives the ease effect
        end
    end
end
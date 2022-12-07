noteSpinSpeed = 0.15;

function onEvent(name, value1, value2)
    if name == 'Note-Spin' then
        for i=0, 7, 1 do -- for every note
            noteTweenAngle(i..'b', i, -360, 0.001, 'linear'); -- set to -360 to spin clockwise
            noteTweenAngle(i, i, 0, noteSpinSpeed, 'expoOut'); -- reset to 0 to spin!! expo out gives the ease effect
        end
    end
end
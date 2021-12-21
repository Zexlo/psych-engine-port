noteSpinSpeed = 0.15;

function onEvent(name, value1, value2)
    if name == 'notefuckery' then
         for i=0, 7, 1 do -- for every note
            noteTweenAngle(i..'b', i, -90, 0.001, 'linear'); -- set to -180 to spin clockwise
                        end
    end
end

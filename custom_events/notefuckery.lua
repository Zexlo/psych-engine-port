
function onEvent(name, value1, value2)
    if name == 'notefuckery' then
         for i=0, 9, 1 do -- for every note
            noteTweenAngle(i..'b', i, value2, value1, 'linear'); -- set to -180 to spin clockwise
                        end
    end
end

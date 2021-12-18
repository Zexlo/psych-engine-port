noteSpinSpeed = 0.15;

function onEvent(name, value1, value2)
    if name == 'Note-Spin' then
        for i=0, 7, 1 do
            noteTweenAngle(i..'b', i, -360, 0.001, 'linear');
            noteTweenAngle(i, i, 0, noteSpinSpeed, 'expoOut');
        end
    end
end

-- function onTweenCompleted(tag)
--     noteTweenAngle(tag, tag, 0, 0.001, 'linear');
-- end
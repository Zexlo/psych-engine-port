function onEvent(name, value1, value2)
    -- trigger on event called "Event Name"
    -- change "Event Name" to whatever the event will be called
    if name == 'Hide-Tails-BG' then
        setProperty('TailsBG.alpha', 0);
    end
end
timerIntervalDefault = 0.25; -- check random number every [timerInterval] seconds forever
chanceOfStaticDefault = 10; -- percentage of chance of static trigger
staticSpeed = 52; -- frames per second of static, 48 = 2x speed

timerInterval = 0; -- create dummies for the future values
chanceOfStatic = 0;

function onCreate()
    makeAnimatedLuaSprite('StaticRand', 'screenSTATIC', 0, 0); -- init static sprite 
    addAnimationByPrefix('StaticRand', 'idle', 'screenSTATIC', staticSpeed, false); -- init animation
    addLuaSprite('StaticRand', true); -- add sprite
    setObjectCamera('StaticRand', 'hud'); -- center sprite, over stage

    math.randomseed(os.time()); -- set rng seed according to system time
end

function onEvent(name, value1, value2)
    if name == 'Start-Random-Static' then
        timerInterval = tonumber(value1); -- tonumber is required, value1 and 2 return strings
        chanceOfStatic = tonumber(value2);

        -- debugPrint(type(timerInterval), ', ', type(chanceOfStatic));

        -- -- [ value verification ]
        if type(timerInterval) == nil or timerInterval == nil or timerInterval == '' then -- if there is no value in the box
            -- use defaults
            timerInterval = timerIntervalDefault;
        else
            if timerInterval < 0 then
                timerInterval = 0;
            end
        end

        if type(chanceOfStatic) == nil or chanceOfStatic == nil or chanceOfStatic == '' then
            -- use defaults
            chanceOfStatic = chanceOfStaticDefault;
        else
            if chanceOfStatic > 100 then
                chanceOfStatic = 100;
            end
            if chanceOfStatic < 0 then
                chanceOfStatic = 0;
            end
        end
        -- [ values are sanitized ]

        --debugPrint(timerInterval, ', ', chanceOfStatic);

        if timerInterval == 0 then
            cancelTimer('TrigRand'); -- cancel timer on a value1 = 0
        else
            runTimer('TrigRand', timerInterval, 0); -- infinite timer, trigger onTimerCompleted every [timerInterval]
        end
    end
end

function onPause()
    cancelTimer('TrigRand'); -- stop the static effect in the pause screen
    return Function_Continue; -- don't interrupt the pause screen
end

function onResume()
    runTimer('TrigRand', timerInterval, 0); -- resume timer after unpause
end

--[[
    every frame is way too fucking fast and not consistent due to different framerates across platforms and players
    so we use timers to slow it down to a controlled interval, and it is consistent because it is a measured amount of time
]] 
function onTimerCompleted(tag, loops, loopsLeft) 
    if tag == 'TrigRand' then -- don't trigger on other timers
        rand = math.random()*100;
        if rand <= chanceOfStatic then
            objectPlayAnimation('StaticRand', 'idle', true); -- play the static, true is to interrupt the previous animation
        end
    end
end

function onDestroy() -- on song end, stop timer
    cancelTimer('TrigRand');
end
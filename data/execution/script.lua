function onCreatePost()
    setTimeBarColors('445D82','000000')     
setPropertyFromClass('GameOverSubstate', 'loopSoundName', ''); --put in mods/music/
end

function onGameOverStart()
        quote = getRandomInt(1, 6)
         runTimer('1', 2, 1)
return Function_Continue
end

function onTimerCompleted(tag, loops, loopsLeft)

if tag == '1' then
	if quote == (1) then  
    playSound('XLines/1', 1)
    elseif quote == (2) then
    playSound('XLines/2', 1)
	elseif quote == (3) then
    playSound('XLines/3', 1)
	elseif quote == (4) then
    playSound('XLines/4', 1)
	elseif quote == (5) then
    playSound('XLines/5', 1)
	elseif quote == (6) then	
	playSound('XLines/6', 1)
	end
end
end
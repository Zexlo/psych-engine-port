-- Lua stuff
function onCreate()
  precacheImage('chaos/Lewis Porker');
	makeAnimatedLuaSprite('Porker', 'chaos/Lewis Porker', 1750, -1200); 
	addAnimationByPrefix('Porker', 'first', 'PorkerFG', 24, false); --XML sheet anim name
	objectPlayAnimation('Porker', 'first');
	addLuaSprite('Porker', true); 
	end

-- Gameplay interactions
function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('Porker', 'first');
	end
end

function onStepHit()
	-- triggered 16 times per section
	setProperty('Porker.scale.x', getProperty('Porker.scale.x') + 0.00); -- if you change the value it will grow in size without stopping so DO NOT edit the value (idk if removing this will break it im too lazy
end

function onCountdownTick(counter) -- rest of this SHOULD NOT be changed
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 2 == 0 then
		objectPlayAnimation('Porker', 'first'); 
	end
end
-- Lua stuff
function onCreate()
	-- triggered when the lua file is started

	-- create a lua sprite called "sexualintercourse"
	makeAnimatedLuaSprite('sexualintercourse', 'Majin FG1', 010, 010);
	addAnimationByPrefix('sexualintercourse', 'first', 'idle', 24, false);
	objectPlayAnimation('sexualintercourse', 'first');
	addLuaSprite('sexualintercourse', true); -- false = add behind characters, true = add over characters
end

-- Gameplay interactions
function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('sexualintercourse', 'first');
	end
end

function onStepHit()
	-- triggered 16 times per section
	setProperty('sexualintercourse.scale.x', getProperty('sexualintercourse.scale.x') + 0.01);
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 2 == 0 then
		objectPlayAnimation('sexualintercourse', 'first');
	end
end
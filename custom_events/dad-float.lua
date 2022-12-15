function onEvent(name, value1, value2)

	if name == 'dad-float' then

function onUpdate(elapsed)

	setProperty('dad.y', defaultOpponentY + math.sin( getPropertyFromClass('Conductor', 'songPosition')/crochet )*100 );

if value1 == 'remove' then
	setProperty('dad.y', defaultOpponentY + math.sin( getPropertyFromClass('Conductor', 'songPosition')/crochet )*0 );
	close(true)
			end
		end
	end
end
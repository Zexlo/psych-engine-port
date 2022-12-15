function onUpdate(elapsed)
	scaleObject('boyfriend', 0.9, 0.9);
	scaleObject('dad', 1.99, 1.99);

	if curBeat >= 100 and curBeat <459 or curBeat >=491 and curBeat <619 then --lmao I finally learned how to use curbeat shit

	setProperty('boyfriend.y', defaultBoyfriendY + math.sin( getPropertyFromClass('Conductor', 'songPosition')/crochet )*100 );
	setProperty('dad.y', defaultOpponentY + math.sin( getPropertyFromClass('Conductor', 'songPosition')/crochet )*100 );	
end

if curBeat >= 563 and curBeat <619 then --now I can stop making everything an event and clean shit up awesome sauce

setProperty('boyfriend.x', defaultBoyfriendX + math.sin( getPropertyFromClass('Conductor', 'songPosition')/crochet )*200 );
	setProperty('dad.x', defaultOpponentX + math.sin( getPropertyFromClass('Conductor', 'songPosition')/crochet )*200 );	

end

	if curBeat == 396 then
	
	setProperty('floor.visible', false)
end	
	if curBeat >= 459 then
	doTweenY("bfY", "boyfriend", 630, 0.2, "linear")
	doTweenY("dadY", "dad", 630, 0.2, "linear")	
	setProperty('floor.visible', true)
		end
		
		if curBeat >=619 then
	setProperty('floor.visible', false)
	setProperty('BG.visible', false)
end
	
end

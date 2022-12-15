function onUpdate(elapsed)
	scaleObject('boyfriend', 0.9, 0.9);
	scaleObject('dad', 1.99, 1.99);
	
	if curBeat == 32 then
	doTweenY("sky1", 'BG', -200, 0.2, "linear")	
	elseif curBeat == 64 then
	doTweenY("sky2", 'BG', 0, 0.2, "linear")	
	elseif curBeat == 95 then
	doTweenY("sky3", 'BG', 80, 0.2, "linear")
		elseif curBeat == 127 then
	doTweenY("sky4", 'BG', -400, 0.2, "linear")
		elseif curBeat == 223 then
	doTweenY("sky5", 'BG', -200, 0.2, "linear")	
		elseif curBeat == 287 then
	doTweenY("sky6", 'BG', 0, 0.2, "linear")
		elseif curBeat == 319 then
	doTweenY("sky7", 'BG', -400, 0.2, "linear")
		elseif curBeat >= 351 and curBeat <=383 then
	doTweenY("sky7", 'BG', -400, 0.2, "linear")
	setProperty('boyfriend.y', defaultBoyfriendY + math.sin( getPropertyFromClass('Conductor', 'songPosition')/crochet )*100 );
	setProperty('dad.y', defaultOpponentY + math.sin( getPropertyFromClass('Conductor', 'songPosition')/crochet )*100 );
		elseif curBeat >= 383 then
	doTweenY("bfY", "boyfriend", 630, 0.2, "linear")
	doTweenY("dadY", "dad", 630, 0.2, "linear")		
end

	if curBeat == 349 then
	doTweenY("sky8", 'BG', 0, 0.6, "linear")		
	end

end


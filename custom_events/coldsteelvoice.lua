function onEvent(name, value1, value2)
	if name == 'coldsteelvoice' then
	quote = getRandomInt(1, 4)
	
	if quote == (1) then  
    playSound('Coldsteel/fuckudad', 0.8)
    elseif quote == (2) then
    playSound('Coldsteel/sammy', 0.8)
	elseif quote == (3) then
    playSound('Coldsteel/straight', 0.8)
	elseif quote == (4) then
    playSound('Coldsteel/sunshine', 0.8)
		end
	end
end
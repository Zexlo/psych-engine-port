function onEvent(name, value1, value2)
    
if name == "text" then
 
	makeLuaText('txt', 'blank', 400, 450, 610)
	setObjectCamera('txt', 'other');
	setTextSize('txt', 30)
	setTextString('txt', value1)
	setTextAlignment('txt', 'center')
	addLuaText('txt')
	doTweenX('txt', 'Text', 1.5, 1, 'elasticInOut')

	runTimer('remove',value2,1);

function onMoveCamera(focus)
	if focus == 'dad' then
	setTextColor('txt', 'FF0000')
	else
	setTextColor('txt', '0000FF')	
	end
	end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'remove' then
removeLuaText("txt", true)          
end
end
end
end
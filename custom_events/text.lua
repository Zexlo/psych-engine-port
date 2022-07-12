function onEvent(name, value1, value2)
    
if name == "text" then
 
makeLuaText('txt', 'you feel dizzy', 900, 400, 500)
setTextSize('txt', 50)
setTextString('txt', value2)
setTextAlignment('txt', 'left')
addLuaText('txt')
doTweenX('txt', 'Text', 1.5, 1, 'elasticInOut')

runTimer('remove',value1,1);
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'remove' then
removeLuaText("txt", false)          
end
end
end
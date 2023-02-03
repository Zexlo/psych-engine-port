function onCreate()
makeAnimatedLuaSprite('sumky', 'sunky/sunker', 250, 0);
addAnimationByPrefix('sumky', 'brrr', 'sunker', 24, false);
setObjectCamera('sumky', 'camHud')
scaleObject('sumky', 5, 5);
addLuaSprite('sumky', true);
setProperty('sumky.alpha', 0);
end

function onEvent(name, value1, value2)

    if name == 'spawnsunker' then
setProperty('sumky.alpha', 0.8);
playAnim('sumky', 'brrr');	
doTweenAngle('brr','sumky',360, 0.8,'circInout')
    end
end

function onTweenCompleted(tag)
	if tag == 'brr' then
removeLuaSprite('sumky',true)
end
end
function onCreate()

	makeLuaSprite('dio', 'sunky/Munch', 600, -650);
	setObjectCamera('dio', 'other');	
	setObjectOrder('dio', getObjectOrder('blackbox')-2)
	addLuaSprite('dio', true);			
end
function onEvent(name, value1, value2)

    if name == 'cereal2' then
setProperty('dio.alpha', 1);	
doTweenY('omom','dio',1000, 8,'linear')
    end
end

function onTweenCompleted(tag)
	if tag == 'omom' then
setProperty('dio.alpha', 0);
removeLuaSprite('dio',true)
end
end
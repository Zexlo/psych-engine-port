function onCreate()

	makeLuaSprite('loops', 'sunky/cereal', -600, 50);
	setObjectCamera('loops', 'other');
	setObjectOrder('loops', getObjectOrder('blackbox')-2)		
	setProperty('loops.alpha', 0);
	addLuaSprite('loops', true);
end
	
function onEvent(name, value1, value2)

    if name == 'cerealmove' then
setProperty('loops.alpha', 1);	
doTweenX('go','loops',1350, 8,'linear')
    end
end

function onTweenCompleted(tag)
	if tag == 'go' then
removeLuaSprite('loops',true)
end
end
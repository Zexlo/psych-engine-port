function onCreate()

makeLuaSprite('spoop', 'sunky/sunkage', -120, 400);
makeLuaSprite('dark', 'black', -20, 200);

scaleObject('dark', 1, 1.5); 

setProperty('spoop.alpha', 0);
setProperty('dark.alpha', 0);

addLuaSprite('dark', true);
addLuaSprite('spoop', true);
end
function onEvent(name, value1, value2)

    if name == 'sunkytime' then
start = 3;

runTimer('boo', start);
setProperty('dark.alpha', 1);	
doTweenAlpha('boom','spoop',1, 2.1,'linear')
    end
end

function onTimerCompleted(tag)
	if tag == 'boo' then
removeLuaSprite('spoop',true)
removeLuaSprite('dark',true)
end
end
function onCreate()

    makeLuaSprite('YCRjump', 'simplejump', -300, -200); -- X,Y pos
    setProperty('YCRjump.alpha', 0);
    addLuaSprite('YCRjump', false);
setObjectCamera('YCRjump', 'hud');	
   end

function onEvent(name, value1, value2)

    if name == 'YCRjumpscare' then
startTime = 0.3;

	runTimer('scare', startTime);	
        setProperty('YCRjump.alpha', 1);
        playSound('spook');		
        end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'scare' then
        setProperty('YCRjump.alpha', 0);
removeLuaSprite('YCRjump', true);
end
end
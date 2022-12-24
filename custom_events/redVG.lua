function onCreate()

    makeLuaSprite('scaryredVG', 'RedVG', 0, 0); -- X,Y pos
    setProperty('scaryredVG.alpha', 0);
    addLuaSprite('scaryredVG', false);
setObjectCamera('scaryredVG', 'hud');	
   end

function onEvent(name, value1, value2)

function onStepHit()

if getProperty('Hillzone.alpha') == 1 then
setProperty('scaryredVG.visible',false)
else
setProperty('scaryredVG.visible',true)
end
    if name == 'redVG' then
doTweenAlpha('show', 'scaryredVG', 1, 0.8, 'linear')
end
function onTweenCompleted(tag)
    if tag == 'show' then 
doTweenAlpha('hide', 'scaryredVG', 0, 0.8, 'linear')	
    end

    if tag == 'hide' then	
doTweenAlpha('show', 'scaryredVG', 1, 0.8, 'linear')	
    end
end
end
end
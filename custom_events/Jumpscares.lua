function onCreate()
    makeLuaSprite('tails','jumpscares/Tails',0 , 0)
    makeLuaSprite('knux','jumpscares/Knuckles',0 , 0)
    makeLuaSprite('eggy','jumpscares/Eggman',0 , 0)
    
    setObjectCamera('tails','other')
    setObjectCamera('knux','other')
    setObjectCamera('eggy','other')
    
    addLuaSprite('tails',true)
    addLuaSprite('knux',true)
    addLuaSprite('eggy',true)
    
    setProperty('tails.alpha',0)
    setProperty('knux.alpha',0)
    setProperty('eggy.alpha',0)
end

function onEvent(eventName, value1, value2)

if value1 == 'Tails' then
doTweenAlpha('scare','tails',0.7,0.3,ElasticOut)
playSound('jumpscare/Tscream',0.3)
doTweenZoom('zoomie','camOther',1.2,0.1,ExpoOut) 

elseif value1 == 'Knuckles' then
    doTweenAlpha('scare','knux',0.7,0.3,ElasticOut)
    playSound('jumpscare/Kscream',0.4)
    doTweenZoom('zoomie','camOther',1.2,0.1,ExpoOut)   

elseif value1 == 'Eggman' then
        doTweenAlpha('scare','eggy',0.7,0.3,ExpoOut)
        playSound('jumpscare/Escream',0.4) 
        doTweenZoom('zoomie','camOther',1.2,0.1,ExpoOut)           

end
end

function onTweenCompleted(tag)
if tag == 'scare' then
    doTweenAlpha('hidelol','tails',0,0.7,ExpoOut)
    doTweenAlpha('hidelol2','knux',0,0.7,ExpoOut)
    doTweenAlpha('hidelol3','eggy',0,0.7,ExpoOut)     
end
if tag == 'hidelol3' then
    doTweenZoom('reset','camOther',1,0.5,ExpoOut)    
end   
end
function onCreatePost()
    makeLuaSprite('tents','tentacles',0,0)
    setObjectCamera('tents','HUD')
    addLuaSprite('tents',true)
    setProperty('tents.alpha',0)

--[[     makeLuaText('drain','song:'..songName..'\ndifficulty: '..difficultyName..'\nCurbeat:'..curBeat, 1280, 0, 80);
    setTextSize('drain', 20);
    setTextAlignment('drain', 'center');
    setObjectCamera('drain', 'other');
    addLuaText('drain') ]]
    setTimeBarColors('311c73','000000')     
end

function onMoveCamera(focus)
    if focus == 'dad' then
        setProperty('defaultCamZoom', 1.10)
    elseif focus == 'boyfriend' then
        setProperty('defaultCamZoom', 0.90)
    end
end

function onUpdate(elapsed)    
    for i = 0,3 do
    noteTweenX(i, i,-1000, 0.2, 'linear')
        end  
    setTextString('drain','health:'..getProperty('health', getProperty('health') - getProperty('tents.alpha')/100 - misses/800 - getProperty('bads')/2200)..'\nalpha: '..getProperty('tents.alpha',getProperty('tents.alpha') - getProperty('sicks')/2700 - 0.001)..'\nmisses:'..misses..'\nsicks:'..getProperty('sicks')..'\nbads:'..getProperty('bads'))

    setProperty('tents.alpha',getProperty('tents.alpha') + 0.0003)
    end
    function noteMiss(id,dir,type,sustain)        
    setProperty('tents.alpha',getProperty('tents.alpha') + misses/18)
    end
    
    function goodNoteHit()
        setProperty('tents.alpha',getProperty('tents.alpha') - getProperty('sicks')/2700 - 0.001)
        if not isSustainNote then                     
            setProperty('health', getProperty('health') - getProperty('tents.alpha')/100 - misses/800 - getProperty('bads')/2200)
                else
            setProperty('health', getProperty('health') - getProperty('tents.alpha')/180 - misses/1100 - getProperty('bads')/2600)                 
            end    
    end

    function opponentNoteHit(id, direction, noteType, isSustainNote)
        if mustHitSection then
    setProperty('tents.alpha',getProperty('tents.alpha') + 0.08)
        end     
        if not isSustainNote then                     
    setProperty('health', getProperty('health') - getProperty('tents.alpha')/100 - misses/800 - getProperty('bads')/2200)
        else
    setProperty('health', getProperty('health') - getProperty('tents.alpha')/180 - misses/1100 - getProperty('bads')/2600)                 
    end
end
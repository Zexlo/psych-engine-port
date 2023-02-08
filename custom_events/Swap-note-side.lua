function onEvent(name,value1,value2)
    if name == 'Swap-note-side' and not middlescroll then
    if  value1 == 'right' then
        setPropertyFromGroup('playerStrums', 0, 'x', defaultOpponentStrumX0)
        setPropertyFromGroup('playerStrums', 1, 'x', defaultOpponentStrumX1)
        setPropertyFromGroup('playerStrums', 2, 'x', defaultOpponentStrumX2)
        setPropertyFromGroup('playerStrums', 3, 'x', defaultOpponentStrumX3)
        setPropertyFromGroup('playerStrums', 4, 'x', defaultOpponentStrumX4)

        setPropertyFromGroup('opponentStrums', 0, 'x', defaultPlayerStrumX0 + 40)
        setPropertyFromGroup('opponentStrums', 1, 'x', defaultPlayerStrumX1 + 43)
        setPropertyFromGroup('opponentStrums', 2, 'x', defaultPlayerStrumX2 + 40)
        setPropertyFromGroup('opponentStrums', 3, 'x', defaultPlayerStrumX3 + 46)
        setPropertyFromGroup('opponentStrums', 4, 'x', defaultPlayerStrumX4 + 49)
        setProperty('boyfriend.flipX', true)
        doTweenX('moveBf','boyfriend',defaultOpponentX ,0.2,'linear')
        if dadName ~= 'knux' then
        doTweenX('movedad','dad',defaultBoyfriendX ,0.2,'linear')
        end    
    elseif value1 == 'left' then
        
        setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0)
        setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1)
        setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2)
        setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3)
        setPropertyFromGroup('opponentStrums', 4, 'x', defaultOpponentStrumX4)

        setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 + 40)
        setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 + 43)
        setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 + 40)
        setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 + 46)
        setPropertyFromGroup('playerStrums', 4, 'x', defaultPlayerStrumX4 + 49)
        setProperty('boyfriend.flipX', false)
        
        doTweenX('moveBf','boyfriend',defaultBoyfriendX,0.2,'linear')
        if dadName ~= 'knux' then
            doTweenX('movedad','dad',defaultOpponentX ,0.2,'linear')
            end      
end
end
end
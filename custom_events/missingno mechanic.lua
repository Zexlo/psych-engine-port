function onEvent(name, value1, value2)
curEventName = "missingno mechanic"
if name == curEventName then
noteTweenX('defaultPlayerStrumX0', 4, defaultPlayerStrumX0 - math.random(50, screenWidth / 7), 0.001)
noteTweenX('defaultPlayerStrumX1', 5, defaultPlayerStrumX1 - math.random(50, screenWidth / 7), 0.001)
noteTweenX('defaultPlayerStrumX2', 6, defaultPlayerStrumX2 - math.random(50, screenWidth / 7), 0.001)
noteTweenX('defaultPlayerStrumX3', 7, defaultPlayerStrumX3 -  math.random(50, screenWidth / 7), 0.001)

noteTweenX('defaultOpponentStrumX0', 0, defaultOpponentStrumX0 + math.random(50, screenWidth / 7), 0.001)
noteTweenX('defaultOpponentStrumX1', 1, defaultOpponentStrumX1 + math.random(50, screenWidth / 7), 0.001)
noteTweenX('defaultOpponentStrumX2', 2, defaultOpponentStrumX2 + math.random(50, screenWidth / 7), 0.001)
noteTweenX('defaultOpponentStrumX3', 3, defaultOpponentStrumX3 + math.random(50, screenWidth / 7), 0.001)

noteTweenY('defaultPlayerStrumY0', 4, defaultOpponentStrumY0 - math.random(5, screenHeight / 11), 0.001)
noteTweenY('defaultPlayerStrumY1', 5, defaultOpponentStrumY1 - math.random(5, screenHeight / 11), 0.001)
noteTweenY('defaultPlayerStrumY2', 6, defaultOpponentStrumY2 - math.random(5, screenHeight / 11), 0.001)
noteTweenY('defaultPlayerStrumY3', 7, defaultOpponentStrumY3 - math.random(5, screenHeight / 11), 0.001)

noteTweenY('defaultOpponentStrumY0', 0, defaultOpponentStrumY0 - math.random(5, screenHeight / 11), 0.001)
noteTweenY('defaultOpponentStrumY1', 1, defaultOpponentStrumY1 - math.random(5, screenHeight / 11), 0.001)
noteTweenY('defaultOpponentStrumY2', 2, defaultOpponentStrumY2 - math.random(5, screenHeight / 11), 0.001)
noteTweenY('defaultOpponentStrumY3', 3, defaultOpponentStrumY3 - math.random(5, screenHeight / 11), 0.001)
end
end
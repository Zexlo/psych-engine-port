function onCreate()
	addCharacterToList('3DGO', 'boyfriend');
	setPropertyFromClass('GameOverSubstate', 'characterName', '3DGO'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', ''); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', ''); --put in mods/music/
	end
	
function onGameOverStart()
if week == 'Xterion' then
setPropertyFromClass('flixel.FlxG', 'camera.zoom', 0.15)
end	
end
function onCreate()
  addCharacterToList('Fleetway1', 'dad');
  addCharacterToList('Fleetway2', 'dad');
  addCharacterToList('Fleetway3', 'dad');
  addCharacterToList('bf-super', 'bf');
  precacheImage('chaos/Lewis Porker');

       setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-fleetway-die'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', ''); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
end

function onUpdate(elapsed)
  setProperty('dad.y', defaultOpponentY + math.sin( getPropertyFromClass('Conductor', 'songPosition')/crochet )*100 );
 end


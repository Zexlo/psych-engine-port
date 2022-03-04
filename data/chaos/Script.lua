function onCreate()
  addCharacterToList('Fleetway1', 'dad');
  addCharacterToList('Fleetway2', 'dad');
  addCharacterToList('Fleetway3', 'dad');
  addCharacterToList('SBF', 'bf');
  addCharacterToList('bf', 'bf');
  addCharacterToList('Porker', 'gf');
  precacheImage('characters/Lewis Porker')
end

function onUpdate(elapsed)
  setProperty('dad.y', defaultOpponentY + math.sin( getPropertyFromClass('Conductor', 'songPosition')/crochet )*100 );
end

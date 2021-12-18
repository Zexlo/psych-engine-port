function onCreate()
 addCharacterToList('Tails_Doll', 'dad');
 addCharacterToList('Tails_Doll_Alt', 'dad');
 addCharacterToList('nobf', 'bf');
 addCharacterToList('SSBF_Assets', 'bf');
  addCharacterToList('3DGO', 'bf');

	setPropertyFromClass('GameOverSubstate', 'characterName', '3DGO'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', ''); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', ''); --put in mods/music/


    end
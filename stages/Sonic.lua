function onCreate()

	makeLuaSprite('SKY', 'tooslow/BGSky', -720, -200);
	setScrollFactor('SKY', 0.9, 0.9);
	scaleObject('SKY', 1.4, 1.4);

	
	makeLuaSprite('fronttrees', 'tooslow/TreesFG', -500, -220);
	scaleObject('fronttrees', 1.2, 1.2);
		
       makeLuaSprite('EGGMAN', 'tooslow/DeadEgg', -140, 680);
	
	makeLuaSprite('KNUCKLE', 'tooslow/DeadKnux', 1200, 700);

	
	 makeLuaSprite('TAIL', 'tooslow/TAIL', -360, 670);

	makeLuaSprite('BGtrees', 'tooslow/TreesMidBack', -400, -200);
	scaleObject('BGtrees', 1.1, 1.1);

	makeLuaSprite('midtrees1', 'tooslow/TreesMid', -50, 0);
	scaleObject('BGtrees', 1.1, 1.1);

	makeLuaSprite('midtrees2', 'tooslow/TreesOuterMid1', -50, -100);

	makeLuaSprite('midtrees3', 'tooslow/TreesOuterMid2', -300, -40);

	makeLuaSprite('treesL', 'tooslow/TreesLeft', -500, 0);
	makeLuaSprite('treesR', 'tooslow/TreesRight', 1100, -80);	
    scaleObject('treesR', 1.2, 1.2);	

	makeLuaSprite('bush1', 'tooslow/OuterBush', -500, 300);
    scaleObject('bush1', 1.2, 1.2);	

	makeLuaSprite('Grassfloor', 'tooslow/Grass', -500, 550);
	scaleObject('Grassfloor', 1.2, 1.2);	

       makeLuaSprite('tails', 'tooslow/DeadTailz', -400, 0);
	   scaleObject('tails', 1.2, 1.2);	   


	addLuaSprite('SKY', false);
	addLuaSprite('BGtrees', false);
	addLuaSprite('midtrees1',false);
	addLuaSprite('midtrees2',false);
	addLuaSprite('midtrees3',false);
	addLuaSprite('treesL',false);	
	addLuaSprite('treesR',false);
	addLuaSprite('bush1',false);		
	addLuaSprite('Grassfloor', false);
	addLuaSprite('TailsSpikeAnimated', false);
	addLuaSprite('TAIL', false);
	addLuaSprite('EGGMAN', false);
    addLuaSprite('tails', false);
	addLuaSprite('KNUCKLE', false);
	addLuaSprite('fronttrees', true);
	scaleObject('GF', 0.8, 0.8);
		
end


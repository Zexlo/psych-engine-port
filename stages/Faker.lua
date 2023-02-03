function onCreate()
 
addCharacterToList('Fakerbig', 'dad');
 makeLuaSprite('fsky', 'faker/fsky', -800, -100);

 makeLuaSprite('fpillar1', 'faker/fpillar1', -750, -240);
 setScrollFactor('fpillar1', 0.9, 0.9); 
 
 makeLuaSprite('fpillar2', 'faker/fpillar2', 700, -200);
 setScrollFactor('fpillar2', 0.9, 0.9);
 
 makeLuaSprite('ftree1', 'faker/ftree1', -720, -250);
 setScrollFactor('ftree1', 0.9, 0.9);

makeLuaSprite('ftree2', 'faker/ftree2', -830, -160);
 setScrollFactor('ftree2', 0.9, 0.9);

     
    makeLuaSprite('flower1', 'faker/flower1', -820, -130);
 setScrollFactor('flower1', 0.9, 0.9);
 
 makeLuaSprite('flower2', 'faker/flower2', -680, -110);


 makeLuaSprite('fmountains', 'faker/fmountains', -750, -200);
 setScrollFactor('fmountains', 0.9, 0.9);

 makeLuaSprite('fgrass', 'faker/fgrass', -800, 600);
 setScrollFactor('fgrass', 0.9, 0.9);


   addLuaSprite('fsky', false);
   addLuaSprite('fmountains', false);
   addLuaSprite('fgrass', false);
   addLuaSprite('ftree1', false);
   addLuaSprite('ftree2', false);
   addLuaSprite('fpillar1', false);
   addLuaSprite('flower1', false);
   addLuaSprite('flower2', false);
   addLuaSprite('fpillar2', false);

     
 close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
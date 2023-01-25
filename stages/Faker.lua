function onCreate()
 
addCharacterToList('Fakerbig', 'dad');
 makeLuaSprite('fsky', 'faker/fsky', -800, -500);
 setScrollFactor('fsky', 0.9, 0.9);
 
 makeLuaSprite('fpillar2', 'faker/fpillar2', 700, -100);
 setScrollFactor('fpillar2', 0.9, 0.9);
 scaleObject('fpillar2', 0.7, 0.7);
 
 makeLuaSprite('ftree1', 'faker/ftree1', -500, -100);
 setScrollFactor('ftree1', 0.9, 0.9);
 scaleObject('ftree1', 0.7, 0.7);

makeLuaSprite('ftree2', 'faker/ftree2', -400, -070);
 setScrollFactor('ftree2', 0.9, 0.9);
 scaleObject('ftree2', 0.7, 0.7);

     
    makeLuaSprite('flower1', 'faker/flower1', -600, -100);
 setScrollFactor('flower1', 0.9, 0.9);
 scaleObject('flower1', 0.7, 0.7);
 
 makeLuaSprite('flower2', 'faker/flower2', -100, -050);
 setScrollFactor('flower2', 0.9, 0.9);
 scaleObject('flower2', 0.7, 0.7);

 
  makeLuaSprite('fpillar1', 'faker/fpillar1', -600, -100);
 setScrollFactor('fpillar1', 0.9, 0.9);
 scaleObject('fpillar1', 0.7, 0.7);


 makeLuaSprite('fmountains', 'faker/fmountains', -700, -500);
 setScrollFactor('fmountains', 0.9, 0.9);
 scaleObject('fmountains', 1.1, 1.1);

 makeLuaSprite('fgrass', 'faker/fgrass', -800, 400);
 setScrollFactor('fgrass', 0.9, 0.9);
 scaleObject('fgrass', 1.1, 1.1);


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
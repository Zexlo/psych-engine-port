local shaderName = "glitch"
local shaderName2 = "noglitch"
function onCreate()
    shaderCoordFix() -- initialize a fix for textureCoord when resizing game window

    makeLuaSprite("glitch")
    makeGraphic("shaderImage", screenWidth, screenHeight)

    makeLuaSprite("noglitch")
    makeGraphic("empty", screenWidth, screenHeight)

   setSpriteShader("shaderImage", "glitch")
   setSpriteShader("empty", "noglitch")

    runHaxeCode([[
        var shaderName = "]] .. shaderName .. [[";
        
        game.initLuaShader(shaderName);
        
        var shader0 = game.createRuntimeShader(shaderName);
        game.camGame.setFilters([new ShaderFilter(shader0)]);
        game.getLuaObject("glitch").shader = shader0; // setting it into temporary sprite so luas can set its shader uniforms/properties

        var shaderName2 = "]] .. shaderName2 .. [[";
        
        game.initLuaShader(shaderName2);
        
        var shader1 = game.createRuntimeShader(shaderName2);
        game.camGame.setFilters([new ShaderFilter(shader1)]);
        game.getLuaObject("noglitch").shader = shader1; // setting it into temporary sprite so luas can set its shader uniforms/properties 
        return;
    ]])
end

function onUpdate(elapsed)
    setShaderFloat("glitch", "iTime", os.clock())
end

function onEvent(name, value1, value2)
	if name == 'Change Character' then
        if dadName == 'Beast' and songName == 'Triple Trouble' then 
            runHaxeCode([[
            game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("glitch").shader)]);
            ]])
        else 
            runHaxeCode([[
                game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("noglitch").shader)]);
                ]])                 
     end    
    end
end       
--function shaderCoordFix()
    --runHaxeCode([[
        --resetCamCache = function(?spr) {
            --if (spr == null || spr.filters == null) return;
            --spr.__cacheBitmap = null;
            --spr.__cacheBitmapData = null;
        --}
        
        --fixShaderCoordFix = function(?_) {
            --resetCamCache(game.camGame.flashSprite);
            --resetCamCache(game.camHUD.flashSprite);
            --resetCamCache(game.camOther.flashSprite);
        --}
    
        --FlxG.signals.gameResized.add(fixShaderCoordFix);
        --fixShaderCoordFix();
        --return;
    --]])
    
    --local temp = onDestroy
    --function onDestroy()
        --runHaxeCode([[
            --FlxG.signals.gameResized.remove(fixShaderCoordFix);
            --return;
        --]])
        --if (temp) then temp() end
    --end
--end

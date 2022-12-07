function onCreate()
	luaDebugMode = true
	
	setCamFilter('camGame', 'shader')
end

function setCamFilter(cam, shader)
	-- `cam` - Camera you want the shader to be applied to. Should be camGame, camHUD, or camOther.
	-- `shader` - Shader name.
	if shadersEnabled then
		initLuaShader(shader)
		if not luaSpriteExists('shaderImage') then
			makeLuaSprite('shaderImage')
			makeGraphic('shaderImage', screenWidth, screenHeight)
			setSpriteShader('shaderImage', shader)
		end
		runHaxeCode('game.'..cam..'.setFilters([new ShaderFilter(game.getLuaObject("shaderImage").shader)]);')
		if luaDebugMode then
			debugPrint('setCamFilter : Shader successfully added to the camera "'..cam..'"')
		end
	end
end

function removeCamFilter(cam)
	-- `cam` - Camera you want the shader to be removed from. Should be camGame, camHUD, or camOther.
	if shadersEnabled then
		if luaSpriteExists('shaderImage') then
			removeLuaSprite('shaderImage')
		end
		runHaxeCode('game.'..cam..'.setFilters(null);')	
		if luaDebugMode then
			debugPrint('removeCamFilter : Shader successfully removed from the camera "'..cam..'"')
		end
	end
end
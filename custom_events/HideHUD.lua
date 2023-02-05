function onEvent(name,value1,value2)
	if name == 'HideHUD' then 

			setProperty('healthBarBG.visible', false)
			setProperty('healthBar.visible', false)
			setProperty('scoreTxt.visible', false)
			setProperty('timeTxt.visible', false)
			setProperty('iconP1.visible', false)
			setProperty('iconP2.visible', false)
			setProperty('timeBar.visible', false)
		end

		if value1 == 'yes' or value1 == 'Yes' then
			setProperty('healthBarBG.visible', true)
			setProperty('healthBar.visible', true)
			setProperty('scoreTxt.visible', true)
			setProperty('timeTxt.visible', true)
			setProperty('iconP1.visible', true)
			setProperty('iconP2.visible', true)
			setProperty('timeBar.visible', true)
		end
	end
			
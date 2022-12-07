function onEvent(name,value1,value2)
	if name == 'Hide_HealthBar' then 

			setProperty('healthBarBG.visible', false)
			setProperty('healthBar.visible', false)
            setProperty('scoreTxt.visible', false)
			setProperty('iconP1.visible', false)
			setProperty('iconP2.visible', false)
		end

		if value1 == 'Normal' then
			setProperty('healthBarBG.visible', true)
			setProperty('healthBar.visible', true)
            setProperty('scoreTxt.visible', true)
			setProperty('iconP1.visible', true)
			setProperty('iconP2.visible', true)
		end
	end
			
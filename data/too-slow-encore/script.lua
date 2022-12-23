	function onUpdate(elasped)
	doTweenColor('ColorTween', 'timeBar', '166DBB', 1, 'linear')
	
	if curStep >= 399 and curStep <=415 or curStep >= 927 and curStep <=1055 then
	doTweenZoom('wee', 'camGame', 1.3, 0.5, 'linear');
	end
	
	if curStep >= 300 then
	setTextColor('txt', 'FF0000')
		end
	end
function onEvent(name, value1, value2)
	if name == 'showplayernotes' then
		noteTweenAlpha('show1', 4, 1, value1, 'linear');
		noteTweenAlpha('show2', 5, 1, value1, 'linear');
		noteTweenAlpha('show3', 6, 1, value1, 'linear');
		noteTweenAlpha('show4', 7, 1, value1, 'linear');
	end
end

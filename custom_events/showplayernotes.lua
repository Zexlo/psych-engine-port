function onEvent(name, value1, value2)
	if name == 'showplayernotes' then
		noteTweenAlpha('show1', 4, 1, 0.001, 'linear');
		noteTweenAlpha('show2', 5, 1, 0.001, 'linear');
		noteTweenAlpha('show3', 6, 1, 0.001, 'linear');
		noteTweenAlpha('show4', 7, 1, 0.001, 'linear');
	end
end

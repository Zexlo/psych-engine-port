function onEvent(name, value1, value2)
       if name == 'tweenY' then
       object = (value1);
       amount = tonumber(value2);


doTweenY('tweenY', object, amount, 1, 'linear');
end
end
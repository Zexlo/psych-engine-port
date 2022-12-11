function onEvent(name, value1, value2)
       if name == 'tweenAngle' then
       object = (value1);
       amount = tonumber(value2);


doTweenAngle('tweenAngle', object, amount, 0.7, 'linear');
end
end
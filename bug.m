function result = myFunction(x)
  if x > 10
    result = x^2;
  else
    result = x + 5; 
  end
end

% Example usage
>> myFunction(12)
ans = 144
>> myFunction(5)
ans = 10
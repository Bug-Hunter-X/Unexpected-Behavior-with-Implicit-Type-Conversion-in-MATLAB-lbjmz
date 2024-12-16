function result = myFunction(x)
  % Check if x is a scalar
  if isscalar(x)
    if x > 10
      result = x^2;
    else
      result = x + 5; 
    end
  else
    % Handle non-scalar cases explicitly 
    % Convert x to double precision, then apply operations element-wise
    x = double(x); 
    result = x.^2 .* (x > 10) + (x + 5) .* (x <= 10);
  end
end

% Example usage
>> myFunction(12)
ans = 144
>> myFunction(5)
ans = 10
>> myFunction([12 5 20])
ans = [144 10 400] 
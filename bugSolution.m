function result = myFunction(input)
  % Input validation to prevent the error
  if ~isnumeric(input) || input < 0
    error('Input must be a non-negative number.');
  end
  % Or handle error gracefully with try-catch
  try
      % Some code here that might cause an error
      if input < 0
          error('Input must be non-negative');
      end
      % More code here
  catch e
      fprintf('An error occurred: %s\n', e.message);
      result = NaN; % Or some other default value
  end
end

% Example of calling myFunction with negative input and non-number input
myFunction(-1);
myFunction('a');
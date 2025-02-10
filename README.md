# Explicit Error Handling in MATLAB

This repository demonstrates an uncommon error in MATLAB: the explicit use of the `error()` function to halt execution and display a custom error message. While common in other languages, this is sometimes overlooked in MATLAB, which often relies on implicit error handling.

## Bug

The `bug.m` file contains a function, `myFunction`, that explicitly throws an error if the input is negative using the `error()` function. This is a perfectly valid approach, but can be easily overlooked. The main difference between this and a standard exception is the level of control over the message displayed to the user.  Standard exceptions, like those thrown by mathematical operations on invalid data types, provide less customization.

## Solution

The `bugSolution.m` file shows several strategies for better error handling:

1. **Using `try-catch` blocks:** The `try-catch` mechanism provides a more robust method to handle potential errors gracefully. The solution implements this, catching the `error` and producing a more user-friendly message. 
2. **Input Validation:**  Enhancements on input validation, such as checking data types and ranges before calculations, further improve code robustness.

This approach is preferred for producing a more robust and user-friendly experience.

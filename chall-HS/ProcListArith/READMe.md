# List Processing with Arithmetic Rules

### Function: `processNum`

### Description:
`processNum` is a function designed to process a list of integers based on specific carithmetic rules and determine a boolean result based on the sum and product of the processed numbers.

##### Rules for Processing Each numbers
1. Positive Numbers:
- Even: Multiply by 2
- Odd: Add 3

2. Negative Numbers:
- Even: Divide by 2 (integer division)
- Odd: Subtract 1

3. Empty List:
- Return `False` by default

##### Function Logic:
- Step 1: Process each number according to the rules
- Step 2: Calculate the sum and product of the processed numbers
- Step 3: Return `True` if the sum is greater than the product; otherwise, return `False`

##### Example
```hs
processNum([2, -4, 3, -1])
```



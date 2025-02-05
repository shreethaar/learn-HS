# Sequence Analysis

### Function:
`analyzeSeq`

### Description:
`analyzeSeq` is a function designed to process and analyze a list of integers based on specific arithmetic and logical rules, returning a boolean result depending on the conditions met

##### Rules for Processing the Sequence:
1. Sequence Processing:
- Replace each number with the sum of itself and its 0-based index
- Example: `[1,2,3]` becomes `[1+0, 2+1, 3+2] = [1,3,5]`

2. Sequence Analysis:
- Average: Calculate the average of the processed numbers
- Count above average: Identify how many numbers are above the average
- Count of Primes: Determine how many numbers are prime 

3. Return Conditions:
The functions returns `True` if and only if:
- The count of numbers above the average is equal to the count of prime numbers 
- AND the sum of all numbers is greater than their product

4. Empty List: Returns `False` by default

### Example
```hs
analyzeSeq([1,2,3,4])
```

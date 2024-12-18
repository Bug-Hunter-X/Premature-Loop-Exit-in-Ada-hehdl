# Ada Premature Loop Exit Bug

This repository demonstrates a common error in Ada programming: a loop that might exit prematurely, potentially leading to unexpected behavior. The bug is in the `Example` procedure. The loop stops if the value 5 is encountered, which could cause issues if the code following the loop depends on the loop completing all iterations. 

The solution demonstrates a more robust approach, ensuring all elements are processed regardless of values.

## How to Reproduce

1. Compile the provided Ada code (`bug.ada`).
2. Run the compiled program. Observe the output or lack thereof due to the early loop termination.
3. Compare with the corrected code (`bugSolution.ada`).

## Solution

The improved version uses a boolean flag to control whether the loop terminates before all iterations have run.  This ensures that the rest of the code can reliably proceed regardless of the array's contents.
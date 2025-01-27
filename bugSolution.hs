The solution involves avoiding the use of `length` on potentially infinite lists.  If the length is needed, a finite list should be used instead, or a different approach should be taken to achieve the intended result.  Here's one solution that uses `take` to limit the portion of the infinite list used for length computation: 
```haskell
import Prelude hiding (length)

main :: IO ()
main = do
  let infiniteList = [1..]
  let limitedList = take 10 infiniteList -- Limit to first 10 elements
  let listLength = length limitedList 
  print listLength 
```
Alternatively, if the goal isn't to calculate the length but perform other operations, consider using functions specifically designed for lazy evaluation and stream processing that avoid needing to compute the length of an infinite list.
# bubble-sort

Bubble sort

Sorts an array of numbers into ascending order by comparing consecutive elements in the array.

For instance: bubble_sort([1, 4, 2, 4, 1]) first looks at the pair 1, 4.
In this case 4 is already greater than 1 and no swapping is needed. The 
second pair is 4, 2. Here, 2 is less than 4 and they swap places. Now when 2 and 4 are swapped, the next pair is 4, 4. No swapping is needed here because they are equal. The last pair 4, 1 is swapped, which produces the array [1, 2, 4, 1, 4] after the first pass. This process is repeated until the entire array is in ascending order. 

Note that the right-most element is always in its correct place after the first pass. And generally, after k passes, the k right-most elements are correctly ordered. This means that after k passes in an array of n elements, only the first n-k elements need to be sorted.
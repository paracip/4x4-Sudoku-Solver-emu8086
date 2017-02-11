# 4x4-Sudoku-Solver-emu8086
SUDOKU SOLVER (4X4)

by
Gaurav Shukla (paracip)
Gagandeep Singh

PEC

"SUDOKU SOLVER (4X4)" by paracip is licensed under CC BY 2.0

The Sudoku solver 2.0 is an emu 8086 controlled program used to solve 4X4 Sudoku puzzles. It uses simple techniques and algorithms of artificial intelligence (AI) and machine learning. Sudoku solver uses a step-by-step mechanism to solve a 4X4 Sudoku puzzle to yield correct results all the time. It uses the basic principle of solving any Sudoku puzzle i.e. Recursion. It solves the certain cells first and foremost and leaves the uncertain cells unfilled. It repeats the process of filling the certain cells and leaving the uncertain ones until all the cells are filled. This mechanism ensures that the Sudoku solver is always 100 percent efficient. The only 4X4 Sudoku puzzles it can’t solve are the ones that cannot be solved at all.
Let’s understand its working:
As mentioned earlier it uses multiple passes to fill all the unfilled cells and the procedure of filling the certain cells and not filling the uncertain one’s continues until all the cells are filled. The next big catch is to recognize which cells have a certain value and which are not. First of all, the program creates an array of data bytes that stores all the values stored at the 16 different cells in the Sudoku puzzle in a serial order. This program uses the number 0 to recognize blank spaces. The other cells ought to be filled with numbers ranging from 1 to 4. First the program runs through the entire base list to see if there are any 0s there in the list. If a 0 is not found then the number already stored at that cell must be a certain number but if a zero is found at a particular position it means that certain calculations ought to be done to determine the certain number.
At this point, the program is able to detect a certain and a non-certain cell but has no way to know the certain values for the uncertain cells.  Here comes step number 2, the program also stores two other lists at the beginning. The lists have been loaded with the same values as that of the base list but the order has been twisted as such. One list is the ‘transposed list’ and the other is the ‘Squarified list’. Here is how the transposed list works. Imagine a 4X4 Sudoku puzzle. It has indexes 0 to 3 in the first row 4 to 7 in the second and so on. Now a ‘transposed list’ made with slight alterations to the base list. We consider 0 to 3 as the first row in the base list but if we consider the elements of the base list at index 0, 4, 8, 12 as the first elements of the ‘transposed list’ and do the same operation to all the elements we would get a transpose matrix (of course in list form) of the original Sudoku puzzle which itself is a matrix. Now if the program needs to check for certain values at a particular index all it needs to do is to have a row check with its four corresponding elements in both the lists. Now the ‘Squarified list’ also comes in handy as it does a similar operation of assorting the values in a list but this time the four adjacent elements are used to form a list instead. To visualize how a ‘Squarified list’, imagine a 4X4 Sudoku puzzle. In a ‘Squarified list’ the first four elements are the elements at the 0th, 1st, 5th and 4th index of the base list. Similarly, the next four elements ‘Squarified list’ will be the 2nd, 3rd, 7th and 6th indexed elements of the base list. Now running the comparisons on all the three lists would give us certain value at an empty cell if it can be determined at that point.

Now at this point, the solving mechanism is very clear but the algorithms for each of these checks are still to be determined. Now each separate cell will have a separate combination of row checks. For example, the element at index 0 checks against elements of index 0+1, 0+2 and 0+3; the element at index 1 checks against elements of index 1-1, 1+1 and 1+2 and so on. The complete list is as follows:
Index		Normal		Transpose		Squarified
0		1,2,3		1,2,3			1,2,3
1		1,2,- 1		1,2,3			1,2,- 1
2		1,- 1,-2	1,2,3			1,2,3
3 		-1,-2,-3	1,2,3			1,2,-1
4		1,2,3		1,2,-1			-1,-2,-3	
5		1,2,-1		1,2,-1			1,-1,-2
6		1,-1,-2		1,2,-1			-1,-2,-3
7		-1,-2,-3	1,2,-1			1,-1,-2	
8 		1,2,3		1,-1,-2			1,2,3
9		1,2,-1		1,-1,-2			1,2,-1
10		1,-1,-2		1,-1,-2			1,2,3
11		-1,-2,-3	1,-1,-2			1,2,-1
12		1,2,3		-1,-2,-3		-1,-2,-3
13		1,2,-1		-1,-2,-3		1,-1,-2
14		1,-1,-2		-1,-2,-3		-1,-2,-3
15		-1,-2,-3	-1,-2,-3		1,-1,-2

Now, the checking mechanism works in a triple check way. The program keeps a base check value before each check. The program keeps 5 for normal list and ‘Squarified list’, and 0 for transpose list. Row check is performed first and base check is decremented from 5 to 4. Now the program check if it can find a 4 in row, if it does the value is decremented and the check is repeated otherwise 4 is kept at standby for further checking since it may be one of the possible values. Now a check is made with the transpose list and Squarified list but instead of taking 5 as the base check value 0 is taken and the opposite procedure is repeated. If the program gets a common value in either case, it has found a certain value and will fill that index with the found value otherwise it will leave it unfilled and move on to the next index. This process is repeated until all the indexes are filled with certain values.

This algorithm and AI is applied in the Sudoku Solver.

# malloc lab
# Source code by Kristian Villanueva

## Introduction

•Part one utilized the space between the current prefix and next prefix if the space is available. To do so, I modified the logic of firstFitAllocRegion to connect the current prefix and next suffix.
•In part two I made a nextFit function that utilized a pointer to remember the last allocated region in order to allocate the next region. Once again I modified the code for firstFitAllocRegion. 

## Code Directory

•myAllocator.c: checks to see if there is enough space available in the next prefix region in order to allocate the current request. If the next area is not available it utilizes the firstFitAllocRegion. 
•myAllocatorNextFit.c: works the same as myAllocator.c; however it utilizes nextFitAllocRegion.
•test1.c: tests part one of the lab with the given values.
•myAllocatorNextFitTest.c: tests nextFitAllocRegion witht the same values. 

## Compilation and run insturctions

•Compilation: With Makefile in the same directory, type make to compile files
•Run: After compilation, type ./test1, to test part one. Type ./myAllocatorNextFitTest to test part two. 
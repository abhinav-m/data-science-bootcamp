# Control statements in MATLAB

* for i 1:10
* while i <= 5 end;
* while true; break end if end;  `end` comes after if and while
* elseif -> v(1) == 2 

## Defining function
> Create a file , cd into that
* function y = squareThisNumber(x)
* y = x * x
* addpath -> To change directory of functions addpath(/usr/work/fns)
* 
* ```matlab
function [t1,t2]  =squareAndCubeNumber(x)
    t1  = x* x
    t2 = x * x * x
    % function returning two values
    ```
    
# Plotting data


* plot(t,y1) plot t and function y1
* hold on -> plot one function over another
* plot(t,y1,'r') -> red color
* xlabel('time) , ylabel , title , legend('sin','cos')
* print -dpng 'myPlot.png' print plot generated can be in other formats as well
* close -> close the figure
* figure(1): plot(t,y1) -> Figure 1 , figure 2
* subplot(1,2,1) -> Subdivides the plot into 1/2 grid, access the first element plot(t,y1) for first figure, subplot(1,2,2) plot(t,y2) for 2nd figure
* axis([0.5 1 -1 1]) -> range of axis horizontally matrix
* clf -> clear figure
* imgsc(A) -> A matrix plots  matrix with values as different colors
* imagesc(A) , colorbar, colormap gray; -> 3 commands select colorbar and give a colormap of gray
* comma chaining a=1, b=2, c=3  three commands at once, prints out all 3 variables at once ( not if seperated by semi colons)
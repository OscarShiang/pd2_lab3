reset
set font 'Times New Roman 20'
set title 'The executing time of sort and insertion sort'
set xlabel 'the number of elements in log'
set ylabel 'execution time(sec)'
set terminal png
set output 'plot.png'
set xtic 1

plot [:][:0.01] 'estimate' using 1:2 with linespoints linewidth 2 title 'sort()', \
'' using 1:3 with linespoints linewidth 2 title 'insertion sort'

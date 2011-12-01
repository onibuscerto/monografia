set terminal pngcairo size 576,332 enhanced font 'Verdana,9'
set output 'hour_of_day.png'

unset key
set xrange [0.5:24.5]
set xtics 4
set grid y
set ylabel "Commits"
set xlabel "Horário"

set style line 11 lc rgb '#808080' lt 1
set border 3 back ls 11
set tics nomirror
# define grid
set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12

plot 'hour_of_day.dat' using 1:2:(0.5) w boxes fs solid 1.0 lc rgb '#8b1a0e'

set terminal pngcairo size 576,332 enhanced font 'Verdana,9'
set output 'day_of_week.png'

unset key
set xrange [0.5:7.5]
set xtics 1
set grid y
set ylabel "Commits"
set xlabel "Dia da Semana"

set style line 11 lc rgb '#808080' lt 1
set border 3 back ls 11
set tics nomirror
# define grid
set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12

plot 'day_of_week.dat' using 1:3:(0.5):xtic(2) w boxes fs solid 1.0 lc rgb '#8b1a0e'

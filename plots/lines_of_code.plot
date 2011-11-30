set terminal pngcairo size 576,432 enhanced font 'Verdana,9'
set output 'lines_of_code.png'

unset key
set xdata time
set timefmt "%s"
set format x "%Y-%m-%d"
set grid x y
set ylabel "Número de Linhas"
set xlabel "Data"
set xtics rotate

set style line 11 lc rgb '#808080' lt 1
set border 3 back ls 11
set tics nomirror
# define grid
set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12

# color definitions
set style line 1 lc rgb '#8b1a0e' pt 1 ps 1 lt 1 lw 2 # --- red
set style line 2 lc rgb '#5e9c36' pt 6 ps 1 lt 1 lw 2 # --- green


plot 'lines_of_code.dat' using 1:2 with lines linestyle 1

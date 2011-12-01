set terminal pngcairo size 576,432 enhanced font 'Verdana,9'
set output "out.png"

# graph title
set title "Teste de Performance do Web Service"

# y-axis grid
set grid x y

# x-axis label
set xlabel "requisição"

# y-axis label
set ylabel "tempo de resposta (ms)"

set style line 11 lc rgb '#808080' lt 1
set border 3 back ls 11
set tics nomirror
# define grid
set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12

# color definitions
set style line 1 lc rgb '#8b1a0e' pt 1 ps 1 lt 1 lw 2 # --- red
set style line 2 lc rgb '#dbac51' pt 6 ps 1 lt 1 lw 2 # --- green
set style line 3 lc rgb '#e2e34e' pt 6 ps 1 lt 1 lw 2 # --- green
set style line 4 lc rgb '#5e9c36' pt 6 ps 1 lt 1 lw 2 # --- green
set style line 5 lc rgb '#706e98' pt 6 ps 1 lt 1 lw 2 # --- green

# plot data from "out.dat" using column 9
plot "data1.dat" using 9 with lines linestyle 5 title "1 concorrente", \
     "data2.dat" using 9 with lines linestyle 4 title "2 concorrentes", \
     "data5.dat" using 9 with lines linestyle 3 title "5 concorrentes", \
     "data10.dat" using 9 with lines linestyle 2 title "10 concorrentes", \
     "data20.dat" using 9 with lines linestyle 1 title "20 concorrentes"

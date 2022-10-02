        set term x11 persist
        set key right top title " "
        set terminal eps  
        set output 'dos_sum.eps'
        set termoption enhanced
        #set xlabel "Energy ({/Symbol e} - {/Symbol e}_F)"
        #set ylabel "DOS(abs.)"
        set xrange [-10:15]
        set yrange [0:0.5]
        Ef=1.741020
        set style line 1 lt 2 lc rgb "black" lw 3
set style line 2 lt 2 lc rgb "orange" lw 2
set style line 3 lt 2 lc rgb "yellow" lw 3
set style line 4 lt 2 lc rgb "green" lw 2
        unset ytics 
#       set arrow from 0,graph(0,0) to 0,graph(1,1) nohead
#   
 plot "GaO-k1-1.dat" using ($1):($2) title "s-Ga" w l, \
      "GaO-k1-1.dat" using ($1):($3) title "p-Ga" w l, \
      "GaO-k1-1.dat" using ($1):($4) title "d-Ga" w l, \
      "GaO-k2-1.dat" using ($1):($2) title "s-O" w l, \
      "GaO-k2-1.dat" using ($1):($3) title "p-O" w l, \
      "total_dos.txt" using ($1):($4+$3+$2+$8+$7) title "Total" w l ls 1,\

        set term x11 persist
        set key right top title " "
        set terminal eps  
        set output 'dos_sum.eps'
        set termoption enhanced
        #set xlabel "Energy ({/Symbol e} - {/Symbol e}_F)"
        #set ylabel "DOS(abs.)"
        set xrange [-20:12]
        set yrange [-1:1]
        Ef=1.741020
        unset ytics 
#       set arrow from 0,graph(0,0) to 0,graph(1,1) nohead
#   
 plot "GaO-ALPHA_k1-1.dat" using ($1):($2) title "s-Ga" w l, \
      "GaO-ALPHA_k1-1.dat" using ($1):($3) title "p-Ga" w l, \
      "GaO-ALPHA_k1-1.dat" using ($1):($4) title "d-Ga" w l, \
      "GaO-ALPHA_k2-1.dat" using ($1):($2) title "s-O" w l, \
      "GaO-ALPHA_k2-1.dat" using ($1):($3) title "p-O" w l

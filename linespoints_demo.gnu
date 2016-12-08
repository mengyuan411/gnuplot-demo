#gnuplot demo for linepoints chart by mengy 
#run this file with the command next
#gnuplot -e "datafile='';outfile='';tit1='';tit2='';labelx='';labely=''" linepoints.gnu


#set term post eps enhanced color 
#set term pdfcairo color size 3.33,3 font "arical,12"
#set for all pdf figure
set term pdfcairo color size 8,2 font "arical,12"
set font "Arial-Bold,12"

set xlabel font "Helvetica,20"
set xtic font "Helvetica,20" 
set ylabel font "Helvetica,20" offset -2.5
set ytic font "Helvetica,20" 
set key font "Helvetica,15"
set key spacing 1.2
set key right bottom

set datafile separator ","

set output 'throughput-rts.pdf'

set ylabel "Aggregated\nThroughput(Mpbs)"
set xlabel "Number of backlog flows"
unset key
set bmargin 4
#set lmargin 14
#set style fill pattern 1 border  #for the filled bar
#set style fill solid 0.5 border
set xtics 1,2,20
set ytics 0,20,100
#set y2tics auto
#set key box right bottom
#set style data histogram
#set xtic rotate by 315
#set style histogram clustered gap 1
#set style fill solid 1.00 border -1
#plot "device.txt" using 2:xticlabels(1) title columnheader(2)
#set grid
set yrang [0:]
#set yrang [0.4:]
#set mxtics 10
#set mytics 5
#set ytics 10
#set logscale x
#set multiplot layout 2,1
#set xrang [-0.0004:0.0004]
#plot "shift_two_shaman" using 2 title "shift"
#set xdata time 
#set timefmt "%H:%M:%S"  
#set format x "%H:%M:%S"
#set y2label "ht-CDF"
#set xlabel "timestamp (s)"
#set title tit

plot 'agg_th_fig15' using ($1-1):($2/1000000) title 'IEEE 802.11n + RTS/CTS enable' w lp lw 8 pt 11 ps 1 lc rgb "steelblue",\
"" using ($1-1):($3/1000000) title 'QAir + RTS/CTS enable' w lp lw 8 pt 2 ps 1 lc rgb "royalblue",\
"" using ($1-1):($4/1000000) title 'IEEE 802.11n + RTS/CTS disable' w lp lw 8 pt 19 ps 1 lc rgb "black",\
"" using ($1-1):($5/1000000) title 'QAir + RTS/CTS disable' w lp lw 8 pt 12 ps 1 lc rgb "yellow4",\



#gnuplot demo for histogram chart by mengy from peichanghua 
#run this file with the command next
#gnuplot -e "datafile='';outfile='';tit1='';tit2='';labelx='';labely=''" histogram.gnu


set terminal pdf enhanced 
#set term pdfcairo color size 3.33,3 font "arical,12"
#set for all pdf figure
set term pdfcairo color size 8,2 font "arical,12"
set font "Arial-Bold,12"

set xlabel font "Helvetica,20"
set xtic font "Helvetica,20" 
set ylabel font "Helvetica,20" offset -4
set ytic font "Helvetica,20" 
set key font "Helvetica,20"
#set key spacing 4
set key width 4
set key outside horizontal top center

set datafile separator ","

set output '11n-50latency-tcp.pdf'

set ylabel "50_{th} latency(ms)"
#set xlabel "Number of backlog flows"

#set bmargin 4
set lmargin 14
set style fill pattern 1 border  #for the filled bar
#set style fill solid 0.5 border
set xtics 1,2,30
set ytics 0,4,20
set yrang [0:]
#set y2tics auto
#set key box right bottom
#set style data histogram
#set xtic rotate by 315
#set style histogram clustered gap 1
#set style fill solid 1.00 border -1
#plot "device.txt" using 2:xticlabels(1) title columnheader(2)
#set grid
#set yrang [0:1:]
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

plot 'tcp_median_latency_fig10' using ($2*1000) title 'IEEE 802.11n' w histograms fill pattern 1 lw 4 lc rgb "steelblue",\
"" using ($3*1000) title 'QAir' w histograms fill solid 0.8 border lw 4 lc rgb "royalblue",\


#!/usr/bin/env gnuplot

set terminal postscript eps enhanced color 
set output '| epstopdf --filter --outfile=for_He_Zhang_new_LP_RNAfold_MEA_PPV.pdf' 

#set xtics rotate by -25 offset -1.0, 0 font ",9" textcolor rgb "white"
set xtics rotate by -25 offset -1.0, 0 font ",9"
set yrange [30:75]
set size 0.63, 0.70
# Select histogram data
set style data histogram
# Give the bars a plain fill pattern, and draw a solid line around them.
set style fill  #pattern 0 border
set key horizontal #top right
set key font ",8"
set key spacing 1.2 samplen 1

#set rmargin 15
set bmargin at screen 0.12;

set datafile separator ","

#set title "Statistical Significance ProbKnot {/:Italic vs.} Vienna RNAfold MFE" font ",9"
#set ytics (40,50,60,70,80)
set ylabel "PPV" offset 1.5, 0

set style histogram clustered gap 2 

#set label "statistical significance ProbKnot {/:Italic vs.} Vienna RNAfold MFE" at 3,63 font ",11"
#set label  "**" at 0.9, 62. font ",9"
#set label  "**" at 1.2, 62. font ",9"
#set label  "**" at 2.9, 51.6 font ",9"
#set label  "**" at 3.2, 51.3 font ",9"

#et label  "**" at 3.98, 43. font ",9"

#set label  "**" at 4.9, 48.9 font ",9"
#set label  "**" at 5.16, 49.1 font ",9"

#set label  "**" at 6.9, 41.1 font ",9"
#set label  "**" at 7.16, 41.2 font ",9"


plot 'new_MEA_PPV_Sens_raw_data.csv' using 3:xticlabels(1) lc rgb 'orange' fillstyle pattern 4 title "Vienna RNAfold MFE", \
     '' using 6:xticlabels(1) lc rgb 'orange' fillstyle pattern 3 title "LinearFold-V MFE", \
     '' using 9:xticlabels(1) lc rgb 'blue' fillstyle pattern 4 title "Vienna RNAfold + MEA ({/:Italic {/Symbol g}=}1.5)", \
     '' using 12:xticlabels(1) lc rgb 'blue' fillstyle pattern 3 title "LinearPartition + MEA ({/:Italic {/Symbol g}=}1.5)", \
     '' u 222:xticlabels(1) notitle #, \

     #'' using 18:xticlabels(1) lc rgb 'purple' fillstyle pattern 4 title "Vienna RNAfold + ProbKnot (probability threshold = 45{/:Italic/n})", \
     #'' using 21:xticlabels(1) lc rgb 'purple' fillstyle pattern 3 title "LinearPartition + ProbKnot (probability threshold = 45{/:Italic/n})", \


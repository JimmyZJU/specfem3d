#!/bin/csh

# clean old files
# rm -f *.semd.convolved

#foreach file ( DSM_SV_regular_filtered.dat )
foreach file ( green00006007 green00006008 green00006009  )

# write number of lines to an ASCII file
  wc -l $file | cut -f 1 -d ' ' > input_convolve_code.txt

  echo "number of time steps is:"
  cat input_convolve_code.txt

echo convolving $file

xconvolve_source_timefunction_SH < $file > ${file}.convolved_SV

end

rm -f ____________tutu___________


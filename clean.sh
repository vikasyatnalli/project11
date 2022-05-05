#!/bin/bash 
#calculate the total
total=`ls /root/ | wc -l`
echo "Total = $total"
old_files=`expr $total - 50`
echo "Old files = $old_files"
if [ $old_files -gt 0 ]
then 
	ls -rt | head -$old_files | xargs rm -rf
fi


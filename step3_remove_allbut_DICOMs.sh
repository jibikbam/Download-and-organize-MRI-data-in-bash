#!/bin/bash
# step3: remove un-needed files other than DTI DICOMS in subject folders.
# For each ISDH_* directory it should have two components. (e.g. p5207555(having several s-- folders), s5231557(having 1360 DICOM files))
# Should run this where it contains all subject folders (ISDH_Pre*)

DIR=`pwd`

#for i in `find . -type d -name *Pre*`
for i in `find ./ -type d -maxdepth 1 -mindepth 1`
  do
    cd $i
	echo $i
	mv s*/*MRDC* .
	rm -r s*   # remove all s-folders
	rm -r p*   # remove p-folders if any
	# Remove all folders except for DTI s-folder (which contains 1426 files).
#	rm -r `find . -maxdepth 1 -type d -exec bash -c "echo -ne '{}\t'; ls '{}' | wc -l" \; | awk -F"\t" '$NF!=1426{print $1}'`
#	mv s*/* .  # move all DICOM files in s-folder to the current directory
#	rm *tgz    # remove tgz files
#	rm P*      # remove P-files if any

    cd $DIR
done

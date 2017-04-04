#!/bin/bash
# step2: find the s-folder that you need (FSPGR, DTI, FMRI, RS, or MRS) and move it under the subject directory (e.g. ISDH_*)
# Must manually check each directory after this step2.

DIR=`pwd`
scanName='DTI Run #1'

#for i in `find . -type d -name *Pre*`
for i in `find ./ -type d -maxdepth 1 -mindepth 1`
  do
    cd $i
	echo $i	
	cd p*/e*  # there are s-folders in this directory

	# find DTI(b=1000) s-folder (by checking DICOM header) and move it under the subj dir
	for s in $(ls -d s*); do
		cd $s
		string=$(dicom_hdr *MRDC.1 | grep 'Series Description')
		if [[ "$string" == *$scanName* ]]; then
			cd ..
			mv $s ../../
		fi
		cd ..
	done

    cd $DIR
done

	# find DTI s-folder (which contains 1426 files) and move it under the subject directory (e.g. ISDH_*)
	# scp -r `find . -maxdepth 1 -type d -exec bash -c "echo -ne '{}\t'; ls '{}' | wc -l" \; |   awk -F"\t" '$NF==1360{print $1}'` ../../

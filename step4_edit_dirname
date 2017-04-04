#!/bin/bash
# You may skip this step if not needed
# Should run this where it contains all subject folders (CIC_Pre*, ISDH_Pre*)
DIR=`pwd`

#for i in `find . -type d -name *Pre*`
for i in `find ./ -type d -maxdepth 1 -mindepth 1`
  do
     rename 's/ISDH_Pre7_ISDH/BF_S7/' ISDH_Pre7*

     rename 's/ISDH_In7_1_ISDH/In1_S7/' ISDH_In7_1*
     rename 's/ISDH_In7_2_ISDH/In2_S7/' ISDH_In7_2*

     rename 's/ISDH_Inj7_1_ISDH/Inj1_S7/' ISDH_Inj7_1*
     rename 's/ISDH_Inj7_2_ISDH/Inj2_S7/' ISDH_Inj7_2*
     rename 's/ISDH_Inj7_3_ISDH/Inj3_S7/' ISDH_Inj7_3*

     rename 's/ISDH_Post7_1_ISDH/Post1_S7/' ISDH_Post7_1*
     rename 's/ISDH_Post7_2_ISDH/Post2_S7/' ISDH_Post7_2*
done

# After this, erase "_E0000" from directory names


#!/bin/bash
TRAIN=394
VALID=118
TEST=77

tail -n +19 ./heart-v.arff |\
   fgrep -v "%" | gshuf |
   sed -e"s/,/ /g" > temp1.txt
# The training file
/bin/echo "SNNS pattern definition file V3.2"  >heart-train.pat
/bin/echo "generated at Sun Oct 01 15:00:00 2017"  >>heart-train.pat
/bin/echo ""  >>heart-train.pat
/bin/echo ""  >>heart-train.pat
/bin/echo "No. of patterns : $TRAIN" >>heart-train.pat
/bin/echo "No. of input units : 22" >>heart-train.pat
/bin/echo "No. of output units : 5" >>heart-train.pat

head -$TRAIN temp1.txt |
#attribute cp
   sed -e"s/atyp_angina/1 0 0 0/g" |
   sed -e"s/asympt/0 1 0 0/g" |
   sed -e"s/non_anginal/0 0 1 0/g" |
   sed -e"s/typ_angina/0 0 0 1/g" |
#attribute thal
   sed -e"s/fixed_defect/1 0 0/g" |
#sed -e"s/normal/0 1 0/g" |
   sed -e"s/reversable_defect/0 0 1/g" |
#attribute restecg
   sed -e"s/left_vent_hyper/1 0 0/g" |
   sed -e"s/st_t_wave_abnormality/0 0 1/g" |
   sed -e"s/normal/0 1 0/g" |
#attribute num
   sed -e"s/<50/1 0 0 0 0/g" |
   sed -e"s/>50_1/0 1 0 0 0/g" |
   sed -e"s/>50_2/0 0 1 0 0/g" |
   sed -e"s/>50_3/0 0 0 1 0/g" |
   sed -e"s/>50_3/0 0 0 0 1/g" |

#attribute slope
   sed -e"s/up/1 0 0/g" |
   sed -e"s/flat/0 1 0/g" |
   sed -e"s/down/0 0 1/g" |
#Attribute age
   sed -e"s/female/0/g" |
   sed -e"s/male/1/g"  |
#exang {no,yes}
   sed -e"s/no/0/g" |
   sed -e"s/yes/1/g" |
#attribute fbs
   sed -e"s/t/0/g" |
   sed -e"s/f/1/g" >>heart-train.pat

# The validation file
/bin/echo "SNNS pattern definition file V3.2"  >heart-valid.pat
/bin/echo "generated at Sun Oct 01 15:00:00 2017"  >>heart-valid.pat
/bin/echo ""  >>heart-valid.pat
/bin/echo ""  >>heart-valid.pat
/bin/echo "No. of patterns : $VALID" >>heart-valid.pat
/bin/echo "No. of input units : 22"  >>heart-valid.pat
/bin/echo "No. of output units : 5"  >>heart-valid.pat
FROM=`expr $TRAIN + 1`
tail -n +$FROM temp1.txt | head -$VALID |
#attribute cp
sed -e"s/atyp_angina/1 0 0 0/g" |
sed -e"s/asympt/0 1 0 0/g" |
sed -e"s/non_anginal/0 0 1 0/g" |
sed -e"s/typ_angina/0 0 0 1/g" |
#attribute thal
sed -e"s/fixed_defect/1 0 0/g" |
#sed -e"s/normal/0 1 0/g" |
sed -e"s/reversable_defect/0 0 1/g" |
#attribute restecg
sed -e"s/left_vent_hyper/1 0 0/g" |
sed -e"s/st_t_wave_abnormality/0 0 1/g" |
sed -e"s/normal/0 1 0/g" |
#attribute num
sed -e"s/<50/1 0 0 0 0/g" |
sed -e"s/>50_1/0 1 0 0 0/g" |
sed -e"s/>50_2/0 0 1 0 0/g" |
sed -e"s/>50_3/0 0 0 1 0/g" |
sed -e"s/>50_3/0 0 0 0 1/g" |
#attribute slope
sed -e"s/up/1 0 0/g" |
sed -e"s/flat/0 1 0/g" |
sed -e"s/down/0 0 1/g" |
#Attribute age
sed -e"s/female/0/g" |
sed -e"s/male/1/g"  |
#exang {no,yes}
sed -e"s/no/0/g" |
sed -e"s/yes/1/g" |
#attribute fbs
sed -e"s/t/0/g" |
sed -e"s/f/1/g" >>heart-valid.pat

# The test file
/bin/echo "SNNS pattern definition file V3.2"  >heart-test.pat
/bin/echo "generated at Sun Oct 01 15:00:00 2017"  >>heart-test.pat
/bin/echo ""  >>heart-test.pat
/bin/echo ""  >>heart-test.pat
/bin/echo "No. of patterns : $TEST"  >>heart-test.pat
/bin/echo "No. of input units : 22"  >>heart-test.pat
/bin/echo "No. of output units : 5"  >>heart-test.pat
FROM=`expr $FROM + $VALID`
tail -n +$FROM temp1.txt | head -$TEST |
#attribute cp
sed -e"s/atyp_angina/1 0 0 0/g" |
sed -e"s/asympt/0 1 0 0/g" |
sed -e"s/non_anginal/0 0 1 0/g" |
sed -e"s/typ_angina/0 0 0 1/g" |
#attribute thal
sed -e"s/fixed_defect/1 0 0/g" |
#sed -e"s/normal/0 1 0/g" |
sed -e"s/reversable_defect/0 0 1/g" |
#attribute restecg
sed -e"s/left_vent_hyper/1 0 0/g" |
sed -e"s/st_t_wave_abnormality/0 0 1/g" |
sed -e"s/normal/0 1 0/g" |
#attribute num
sed -e"s/<50/1 0 0 0 0/g" |
sed -e"s/>50_1/0 1 0 0 0/g" |
sed -e"s/>50_2/0 0 1 0 0/g" |
sed -e"s/>50_3/0 0 0 1 0/g" |
sed -e"s/>50_3/0 0 0 0 1/g" |
#attribute slope
sed -e"s/up/1 0 0/g" |
sed -e"s/flat/0 1 0/g" |
sed -e"s/down/0 0 1/g" |
#Attribute age
sed -e"s/female/0/g" |
sed -e"s/male/1/g"  |
#exang {no,yes}
sed -e"s/no/0/g" |
sed -e"s/yes/1/g" |
#attribute fbs
sed -e"s/t/0/g" |
sed -e"s/f/1/g" >>heart-test.pat



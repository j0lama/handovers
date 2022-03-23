#!/bin/bash

### ts1_reloc_prep_timeout: S1AP TS 36.413 TS1RelocPrep Expiry Timeout value in milliseconds

# or:
# /var/tmp/srsran/srsenb/hdr/stack/upper/s1ap.h
# line 67 and 68
# and rrc_inactivity_timer = 1000000
# in the enb.conf files

echo "stage 1"
/local/repository/bin/atten 33 10
sleep 10

echo "stage 2"
/local/repository/bin/atten 33 20
sleep 10

echo "stage 3"
/local/repository/bin/atten 35 30
sleep 10

echo "stage 4"
/local/repository/bin/atten 35 20
sleep 10

echo "stage 5"
/local/repository/bin/atten 35 10
sleep 10

echo "stage 6"
/local/repository/bin/atten 35 0

echo "done"

sleep 10
echo "reversing"

echo "stage 1"
/local/repository/bin/atten 35 10
sleep 10

echo "stage 2"
/local/repository/bin/atten 35 20
sleep 10

echo "stage 5"
/local/repository/bin/atten 33 10
sleep 10

echo "stage 6"
/local/repository/bin/atten 33 0

echo "done"
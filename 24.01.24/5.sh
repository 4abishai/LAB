#!/bin/bash
dateOut=$(date)
echo "$dateOut"
date=$(echo "$dateOut" | awk '{print $2}')
month=$(echo "$dateOut" | awk '{print $3}')
year=$(echo "$dateOut" | awk '{print $4}')
hour=$(echo "$dateOut" | awk -F'[: ]' '{print $5}')
minute=$(echo "$dateOut" | awk -F'[ :]' '{print $6}')   # [ :] can also be written as [: ]
seconds=$(echo "$dateOut" | awk -F'[: ]' '{print $7}')
ampm=$(echo "$dateOut" | awk '{print $6}')


# date/month/year/hour.min
echo "$date/$month/$year/$hour:$minute:$seconds $ampm"
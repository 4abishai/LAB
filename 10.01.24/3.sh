#!/bin/bash

echo "Enter the distance in centimeters: "
read distance_cm

# Convert centimeters to meters
distance_m=$(echo "scale=2; $distance_cm / 100" | bc)

# Convert meters to kilometers
distance_km=$(echo "scale=4; $distance_m / 1000" | bc)

echo "Distance in meters: $distance_m m"
echo "Distance in centimeters: $distance_cm cm"
echo "Distance in kilometers: $distance_km km"

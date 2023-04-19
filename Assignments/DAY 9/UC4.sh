#!/bin/bash

# Set the hourly rate and number of working hours for a full-time employee
fulltime_hourly_rate=20
fulltime_hours_worked=8

# Set the hourly rate and number of working hours for a part-time employee
parttime_hourly_rate=10
parttime_hours_worked=8

# Set the number of working days in a month
working_days=20

# Calculate the monthly wage for a full-time employee
fulltime_wage=$(($fulltime_hourly_rate * $fulltime_hours_worked * $working_days))

# Calculate the monthly wage for a part-time employee
parttime_wage=$(($parttime_hourly_rate * $parttime_hours_worked * $working_days))

echo "Full-time employee's monthly wage is $fulltime_wage"
echo "Part-time employee's monthly wage is $parttime_wage"

#!/bin/bash

# Set the hourly rate and number of working hours for a full-time employee
fulltime_hourly_rate=20
fulltime_hours_worked=8

# Set the hourly rate and number of working hours for a part-time employee
parttime_hourly_rate=10
parttime_hours_worked=8

# Calculate the wage for a full-time employee
fulltime_wage=$(($fulltime_hourly_rate * $fulltime_hours_worked))

# Calculate the wage for a part-time employee
parttime_wage=$(($parttime_hourly_rate * $parttime_hours_worked))

echo "Full-time employee's daily wage is $fulltime_wage"
echo "Part-time employee's daily wage is $parttime_wage"

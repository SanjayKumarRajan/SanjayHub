# Set the hourly rate and number of working hours
hourly_rate=20
hours_worked=8

# Calculate the daily wage
wage=$(($hourly_rate * $hours_worked))

echo "Employee's daily wage is $wage"

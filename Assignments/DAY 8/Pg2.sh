declare -A birth_months=()  # initialize an empty dictionary to store birth months

for ((i=1; i<=50; i++)); do  # generate birth month for 50 individuals
  year=$(( ( RANDOM % 2 ) + 92 ))  # get a random year between 92 and 93
  month=$(( ( RANDOM % 12 ) + 1 ))  # get a random month between 1 and 12
  birth_month="$(date -d "$year-$month-01" "+%B")"  # convert the year and month to a month name (e.g. "January")
  echo "Individual $i: $birth_month $year"
  if [[ ${birth_months[$birth_month]+_} ]]; then  # if the birth month is already in the dictionary, add the individual to the list
    birth_months[$birth_month]+=" $i"
  else  # if the birth month is not in the dictionary, add it with the individual as the first item in the list
    birth_months[$birth_month]="$i"
  fi
done

echo "Birth months: "
for month in "${!birth_months[@]}"; do  # loop through the dictionary and print the individuals who have birthdays in the same month
  echo "$month: ${birth_months[$month]}"
done

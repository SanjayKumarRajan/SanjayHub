declare -A roll_results=()  # initialize an empty dictionary to store roll results

while true; do  # repeat until a number reaches 10 times
  roll=$(( ( RANDOM % 6 ) + 1 ))  # roll a die and get a random number between 1 to 6
  echo "Roll result: $roll"
  if [[ ${roll_results[$roll]+_} ]]; then  # if the roll result is already in the dictionary, increment its count
    roll_results[$roll]=$(( ${roll_results[$roll]} + 1 ))
  else  # if the roll result is not in the dictionary, add it with count 1
    roll_results[$roll]=1
  fi
  if [[ ${roll_results[$roll]} -eq 10 ]]; then  # if any number has reached 10 times, break the loop
    break
  fi
done

echo "Roll results: ${roll_results[@]}"  # print the dictionary of roll results

max_roll=1
min_roll=1
for key in "${!roll_results[@]}"; do  # loop through the dictionary and find the number that reached maximum and minimum times
  if [[ ${roll_results[$key]} -gt ${roll_results[$max_roll]} ]]; then
    max_roll=$key
  fi
  if [[ ${roll_results[$key]} -lt ${roll_results[$min_roll]} ]]; then
    min_roll=$key
  fi
done

echo "Number that reached maximum times: $max_roll"
echo "Number that reached minimum times: $min_roll"

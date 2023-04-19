n=$1
prime=1

if [[ $n -lt 2 ]]; then
    prime=0
fi

for ((i=2;i*i<=n;i++))
do
    if [[ $((n%i)) -eq 0 ]]; then
        prime=0
        break
    fi
done

if [[ $prime -eq 1 ]]; then
    echo "$n is prime"
else
    echo "$n is not prime"
fi

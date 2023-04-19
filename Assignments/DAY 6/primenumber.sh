start=$1
end=$2

for ((i=$start;i<=$end;i++))
do
    prime=1

    if [[ $i -lt 2 ]]; then
        prime=0
    fi

    for ((j=2;j*j<=i;j++))
    do
        if [[ $((i%j)) -eq 0 ]]; then
            prime=0
            break
        fi
    done

    if [[ $prime -eq 1 ]]; then
        echo $i
    fi
done

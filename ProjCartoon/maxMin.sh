#!/bin/bash
inp=()

for (( i = 0; i < 3; i++ )); do
    read inp[i]
done

max=${inp[0]}
min=${inp[0]}

for i in "${inp[@]}"
do
    if [[ "$i" -gt "$max" ]]; then
        max="$i"
    fi

    if [[ "$i" -lt "$min" ]]; then
        min="$i"
    fi
done

echo "Max is: $max"
echo "Min is: $min"

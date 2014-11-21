#!/bin/bash
printf  "Enter shape size: "
read size

for (( i = 0; i < size; i++ )); do
    for (( j = 0; j < i; j++ )); do
        printf "* "
    done
    echo ""
done

echo

for (( i = 0; i < size; i++ )); do
    for (( j = 0; j < size; j++ )); do
        printf "* "
    done
    echo ""
done

echo


for (( i = 0; i < size; i++ )); do
    for (( j = 0; j < (size*2); j++ )); do
        printf "* "
    done
    echo ""
done

echo


for (( i = 0; i < size; i++ )); do
    for (( j = 0; j < size-i; j++ )); do
        printf "  "
    done
    for (( j = 0; j < i; j++ )); do
        printf "* * "
    done

    if [[ i!=size-1 ]]; then
        echo ""
    fi
done

for (( i = 0; i < size; i++ )); do
    for (( j = 0; j < i; j++ )); do
        printf "  "
    done
    for (( j = 0; j < size-i; j++ )); do
        printf "* * "
    done
    echo ""
done



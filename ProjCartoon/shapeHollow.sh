#!/bin/bash
printf  "Enter shape size: "
read size

for (( i = 0; i < size; i++ )); do
    for (( j = 0; j <= i; j++ )); do
        if [[ $i -eq 0 || $i -eq $size-1 || $j -eq 0 || $j -eq $i ]]; then
            printf "* "
        else
            printf "  "
        fi 
    done
    echo ""
done

echo

for (( i = 0; i <= size; i++ )); do
    for (( j = 0; j <= size; j++ )); do
        if [[ $i -eq 0 || $i -eq size || $j -eq 0 || $j -eq size ]]; then
            printf "* "
        else
            printf "  "
        fi
    done
    echo ""
done

echo


for (( i = 0; i <= size; i++ )); do
    for (( j = 0; j <= (size*2); j++ )); do
        if [[ $i -eq 0 || $i -eq size || $j -eq 0 || $j -eq $size*2 ]]; then
            printf "* "
        else
            printf "  "
        fi
    done
    echo ""
done

echo

for (( i = 0; i <= size; i++ )); do
    
    for (( j = 0; j <= size-i; j++ )); do
        printf "  "
    done

    for (( j = 0; j <= i; j++ )); do
        if [[ $j -eq 0 ]]; then
            printf "* "
        else
            printf "  "
        fi 
    done

    for (( j = 0; j <= i; j++ )); do
        if [[ $j -eq $i ]]; then
            printf "* "
        else
            printf "  "
        fi 
    done

    echo ""
done


for (( i = 0; i <= size; i++ )); do
    
    for (( j = 0; j <= i; j++ )); do
        printf "  "
    done

    for (( j = 0; j <= $size-i; j++ )); do
        if [[ $j -eq 0 ]]; then
            printf "* "
        else
            printf "  "
        fi 
    done

    for (( j = 0; j <= $size-$i; j++ )); do
        if [[ $j -eq $size-$i ]]; then
            printf "* "
        else
            printf "  "
        fi
    done


    echo ""
done

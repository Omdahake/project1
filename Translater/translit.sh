#!/bin/bash
PARSED=$(getopt -o i:o: --long r2d,d2r -- "$@")
eval set -- "$PARSED"

while true; do
    case "$1" in
        --r2d)
            temp=1
            shift
            ;;
        --d2r)
            temp=2
            shift
            ;;
        -i)
            input=$2
            shift 2
            ;;
        -o)
            output=$2
            shift 2
            ;;
        --)
            shift
            break
            ;;
        *)
            echo "Invalid option"
            exit 1
            ;;
    esac
done

case $temp in
    1)
        ./eng_to_mar.sh "$input" > "$output"
        ;;
    2)
        ./mar_to_eng.sh "$input" > "$output"
        ;;
    *)
        echo "No operation specified"
        ;;
esac


#!/bin/bash
# Simple CPU power monitor using Intel RAPL
# Shows watts every second until you Ctrl+C

FILE="/sys/class/powercap/intel-rapl:0/energy_uj"

if [ ! -f "$FILE" ]; then
    echo "Error: RAPL file not found. Your CPU may not support this."
    exit 1
fi

echo "---> Monitoring CPU package power <---"
echo "--------------------------------------"

while true; do
    prev=$(sudo cat "$FILE")
    sleep 1
    now=$(sudo cat "$FILE")
    watts=$(echo "scale=2; ($now - $prev) / 1000000" | bc)
    printf "%6.2f W\n" "$watts"
done


echo "========== Server Performance Stats =========="

echo ""
echo "CPU Usage:"
cpu_usage=$(ps -A -o %cpu | awk '{s+=$1} END {print s "% used"}')
echo "Total CPU Usage: $cpu_usage"

echo ""
echo "Memory Usage:"
mem_info=$(vm_stat)
total_mem=$(sysctl -n hw.memsize) 
total_mem_mb=$((total_mem / 1024 / 1024))  
used_mem_pages=$(echo "$mem_info" | grep "Pages active" | awk '{print $3}' | tr -d '.')
inactive_mem_pages=$(echo "$mem_info" | grep "Pages inactive" | awk '{print $3}' | tr -d '.')
wired_mem_pages=$(echo "$mem_info" | grep "Pages wired down" | awk '{print $4}' | tr -d '.')
page_size=$(vm_stat | grep "page size of" | awk '{print $8}' | tr -d '.')
used_mem=$(((used_mem_pages + inactive_mem_pages + wired_mem_pages) * page_size / 1024 / 1024))
free_mem=$((total_mem_mb - used_mem))
mem_percentage=$((100 * used_mem / total_mem_mb))
echo "Total: ${total_mem_mb}MB | Used: ${used_mem}MB | Free: ${free_mem}MB | Usage: ${mem_percentage}%"

echo ""
echo "Disk Usage:"
disk_info=$(df -h / | tail -1)
total_disk=$(echo "$disk_info" | awk '{print $2}')
used_disk=$(echo "$disk_info" | awk '{print $3}')
free_disk=$(echo "$disk_info" | awk '{print $4}')
disk_percentage=$(echo "$disk_info" | awk '{print $5}')
echo "Total: $total_disk | Used: $used_disk | Free: $free_disk | Usage: $disk_percentage"

echo ""
echo "Top 5 Processes by CPU Usage:"
ps -Ao pid,comm,%cpu --sort=-%cpu | head -n 6

echo ""
echo "Top 5 Processes by Memory Usage:"
ps -Ao pid,comm,%mem --sort=-%mem | head -n 6

echo ""
echo "========== Additional System Stats =========="

echo ""
echo "OS Version:"
sw_vers -productVersion

echo ""
echo "System Uptime:"
uptime | awk -F', ' '{print $1}'

echo ""
echo "Load Average (1, 5, 15 min):"
sysctl -n vm.loadavg | awk '{print $2, $3, $4}'

echo ""
echo "Logged-in Users:"
who

echo ""
echo "========== End of Report =========="

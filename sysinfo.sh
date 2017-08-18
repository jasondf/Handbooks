#! /bin/bash

echo ""
echo "CPU Brand: " $(sysctl -n machdep.cpu.brand_string)
echo "CPU Core Count: " $(sysctl -n machdep.cpu.core_count)
echo "CPU Thread Count: " $(sysctl -n machdep.cpu.thread_count)

echo ""
system_profiler SPDisplaysDataType | grep 'Graphics/Displays:\|Chipset Model:\|VRAM\|Resolution:'

echo ""
system_profiler SPMemoryDataType | grep '^Memory:\|Memory Slots:\|Size:\|Speed:'
# echo $(top -l 1 | awk '/PhysMem/')

echo ""
system_profiler SPStorageDataType | grep 'Storage:\|Capacity:\|Available:\|Physical Volumes:\|Media Name:\|Medium Type:'





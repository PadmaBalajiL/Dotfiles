#!/bin/bash

BAT=$(acpi -b | grep -E -o '[0-9][0-9]?%')

# Full and short texts
echo "Battery: $BAT"
echo "BAT: $BAT"

# Set urgent flag below 5% or use orange below 20%
[ ${BAT%?} -le 5 ] && exit 33
[ ${BAT%?} -le 20 ] && echo "#FF8000"

exit 0


$full_text = "";
if ($status eq 'Discharging') {
    
	$full_text .= "⚡ $percent% Bat";
} elsif ($status eq 'Charging') {
	$full_text .= " $percent% Chr";
}
 elsif ($status eq 'Unknown' || $status eq 'Full') {
	$full_text .= "⚡ $percent%";
}
